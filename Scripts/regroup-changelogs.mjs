#!/usr/bin/env node
// Transforms existing flat changelog .md files into the new grouped format
// (bounded context → change kind) that matches the updated generateSchemaDiff.ps1.
//
// Usage: node Scripts/regroup-changelogs.mjs <file.md> [<file.md> ...]
//   or:  node Scripts/regroup-changelogs.mjs --all   (discovers all under PlatformApi/)

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

// ── Bounded-context lookup tables (same rules as generateSchemaDiff.ps1) ──────
const TYPE_RULES = [
  // Procurement
  [/^(CostedBoms|Bom)/,                                                                         'Procurement'],
  // Collaboration
  [/^DesAnnotation/,                                                                             'Collaboration'],
  // Insights
  [/^DesWorkspaceIns/,                                                                           'Insights'],
  // Platform — workspace / user types under Des* prefix
  [/^(DesWorkspaceTeam|DesWorkspaceGroup|DesWorkspaceUser|DesProjectGuest|DesProfile)/,          'Platform'],
  // Design
  [/^(DesDesignData|DesRuleCheck|DesComparison|Design|Rule|LatestGeneration)/,                   'Design'],
  // Library Management
  [/^(DesPart|DesSearch)/,                                                                       'Library Management'],
  [/^Des/,                                                                                       'Design'],        // Des* catch-all
  // Customization (must precede Glo* catch-all)
  [/^(GloCus|GloScr)/,                                                                           'Customization'],
  // Platform — all remaining Glo*, App*, Platform, TokenQueries, Sol* (includes SolBld)
  [/^(Glo|App|Platform|TokenQueries|Sol)/,                                                        'Platform'],
  // Renesas (preview) — must precede Sup* catch-all for SupSoftwareProject
  [/^SupSoftwareProject/,                                                                        'Renesas (preview)'],
  // Supply
  [/^Sup/,                                                                                       'Supply'],
  // System Design
  [/^(SysEsd|SysSdm|SysLib)/,                                                                   'System Design'],
  // Requirements
  [/^Requirements/,                                                                              'Requirements'],
  // Renesas (preview)
  [/^(Rsa|Dm|Sft)/,                                                                              'Renesas (preview)'],
];

const OP_RULES = [
  // Procurement
  [/^bom/,                                              'Procurement'],
  // Collaboration
  [/^desAnnotation/,                                    'Collaboration'],
  // Insights
  [/^desWorkspaceIns/,                                  'Insights'],
  // Platform — workspace / user ops under des* prefix
  [/^des(WorkspaceTeam|WorkspaceGroup|WorkspaceUser)/,  'Platform'],
  // Design
  [/^des(DesignData|RuleCheck|Comparison|Compare)/,     'Design'],
  // Library Management
  [/^des(Part|Search|PermissionsById)/,                 'Library Management'],
  [/^des/,                                              'Design'],        // des* catch-all
  // Customization (must precede glo* catch-all)
  [/^glo(Cus|Scr)/,                                     'Customization'],
  // Platform — all remaining glo*, app*, ping, platform, sol* (includes solBld), global*
  [/^(glo|global|app|ping|platform|sol)/,               'Platform'],
  // Renesas (preview) — must precede sup* catch-all for supSoftwareProject
  [/^supSoftwareProject/,                               'Renesas (preview)'],
  // Supply
  [/^sup/,                                              'Supply'],
  // System Design
  [/^(sysEsd|sysSdm|sysLib)/,                           'System Design'],
  // Requirements
  [/^requirements/,                                     'Requirements'],
  // Renesas (preview)
  [/^(rsa|sft|dm)/,                                     'Renesas (preview)'],
  // Design catch-all for any remaining design* ops
  [/^design/,                                           'Design'],
];

const KIND_ORDER = ['Query', 'Mutation', 'Subscription', 'Type', 'Argument', 'Field', 'Input / Payload', 'Schema'];
const KIND_LABEL = {
  'Query':           '🔍 Query',
  'Mutation':        '✏️ Mutation',
  'Subscription':    '🔔 Subscription',
  'Type':            'Types',
  'Argument':        'Arguments',
  'Field':           'Fields',
  'Input / Payload': 'Input / Payload',
  'Schema':          'Directives',
};

// ── Extract the primary path (TypeName.fieldName or just TypeName) from a message ──
function extractPath(msg) {
  let m;

  // "Type 'X' was added/removed"
  m = msg.match(/^Type '([^']+)' was (?:added|removed)/);
  if (m) return m[1];

  // "'X' object implements '...' interface"
  m = msg.match(/^'([^']+)' object implements /);
  if (m) return m[1];

  // "Field 'X.y' is deprecated"
  m = msg.match(/^Field '([^']+)' is deprecated/);
  if (m) return m[1];

  // "Field 'x' was added/removed to/from object type 'Y'" → Y.x
  m = msg.match(/^Field '([^']+)' was (?:added|removed) (?:to|from) object type '([^']+)'/);
  if (m) return `${m[2]}.${m[1]}`;

  // "Argument 'x: T' added to 'Y.z'" (no 'was'; "field" stripped by cleanup)
  m = msg.match(/^Argument '[^']+' added to '([^']+)'/);
  if (m) return m[1];

  // "Argument 'x' was removed from 'Y.z'"
  m = msg.match(/^Argument '[^']+' was removed from '([^']+)'/);
  if (m) return m[1];

  // "Argument 'x' was added to '@yyy'" → @yyy (directive arg)
  m = msg.match(/^Argument '[^']+' was added to '@([^']+)'/);
  if (m) return `@${m[1]}`;

  // "Argument 'x' was added to directive 'yyy'" → directive path
  m = msg.match(/^Argument '[^']+' was added to directive '([^']+)'/);
  if (m) return `@${m[1]}`;

  // "Input field 'x' of type 'T' was added/removed to/from input object type 'Y'" → Y.x
  m = msg.match(/^Input field '([^']+)' of type '[^']+' was (?:added to|removed from) input object type '([^']+)'/);
  if (m) return `${m[2]}.${m[1]}`;

  // "Member 'X' was added to Union type 'Y'" → Y
  m = msg.match(/^Member '[^']+' was added to Union type '([^']+)'/);
  if (m) return m[1];

  // "Object type 'X' has description '...'" → X
  m = msg.match(/^Object type '([^']+)' has description/);
  if (m) return m[1];

  // "Directive 'x' was added to field 'Y.z'" (old format before "field" was stripped)
  m = msg.match(/^Directive '[^']+' was added to field '([^']+)'/);
  if (m) return m[1];

  // "Directive 'x' was added to 'Y.z'" (formerly "to field 'Y.z'", stripped by cleanup)
  m = msg.match(/^Directive '[^']+' was added to '([^']+)'/);
  if (m) return m[1];

  // "Directive 'x' was added to (?:input )?object 'Y'" → Y
  m = msg.match(/^Directive '[^']+' was added to (?:input )?object '([^']+)'/);
  if (m) return m[1];

  // "Directive 'x' was added to input object type 'Y'" → Y
  m = msg.match(/^Directive '[^']+' was added to input object type '([^']+)'/);
  if (m) return m[1];

  // standalone directive / location change → skip (return null)
  return null;
}

function getContext(path) {
  if (!path) return 'Common';
  const segs = path.split('.');
  const first = segs[0];
  if (first.startsWith('@')) return 'Common';
  if (['Query', 'Mutation', 'Subscription'].includes(first)) {
    if (segs.length < 2) return 'Common';
    const op = segs[1];
    for (const [re, ctx] of OP_RULES) { if (re.test(op)) return ctx; }
    return 'Common';
  }
  for (const [re, ctx] of TYPE_RULES) { if (re.test(first)) return ctx; }
  return 'Common';
}

function getKind(msg, path) {
  // Root-operation check applies to ALL change types (field, argument, directive, etc.)
  const segs  = path ? path.split('.') : [];
  const first = segs[0] ?? '';

  if (!path || !first)                return 'Schema';  // no path — schema-level change
  if (first.startsWith('@'))          return 'Schema';  // directive-internal change

  // Any change whose root type is a root operation goes under that operation kind
  if (['Query', 'Mutation', 'Subscription'].includes(first)) return first;

  // Type-level changes
  if (/^Type '[^']+' was (?:added|removed)/.test(msg)) return 'Type';
  if (/^Member '[^']+' was added to Union type/.test(msg)) return 'Type';
  if (/^Object type '[^']+' has description/.test(msg)) return 'Type';
  if (/^'[^']+' object implements /.test(msg)) return 'Type';

  // Input / Payload
  if (/^Input field /.test(msg)) return 'Input / Payload';

  // Field arguments — additions and removals
  if (/^Argument '[^']+' added to '/.test(msg))       return 'Argument';
  if (/^Argument '[^']+' was removed from '/.test(msg)) return 'Argument';

  // Directive additions — classify by what they target
  if (/^Directive '[^']+' was added/.test(msg)) {
    if (/was added to input object/.test(msg)) return 'Input / Payload';
    if (/was added to object/.test(msg))       return 'Type';
    if (segs.length >= 2)                      return 'Field';  // directive on a named field
    return 'Schema';                                             // standalone new directive
  }

  // Directive-arg / location additions that didn't match @ path
  if (/^Argument '[^']+' was added to /.test(msg)) return 'Schema';
  if (/^Location '[^']+' was added to directive/.test(msg)) return 'Schema';

  // Regular field changes
  if (/^Field '/.test(msg)) return 'Field';

  return 'Schema'; // anything else — preserve rather than drop
}

// ── Parse a flat changelog file ──────────────────────────────────────────────
const LEVEL_PREFIXES = [
  { prefix: '## 🔴', key: 'BREAKING',     title: '🔴 Breaking Changes' },
  { prefix: '## ⚠️',  key: 'DANGEROUS',   title: '⚠️ Dangerous Changes' },
  { prefix: '## ✅', key: 'NON_BREAKING', title: '✅ Non-Breaking Changes' },
];

function parseFile(content) {
  const lines = content.split(/\r?\n/);
  const h1 = lines.find((l) => l.startsWith('# ')) ?? '';
  const sections = [];
  let current = null;

  for (const line of lines) {
    const level = LEVEL_PREFIXES.find((lp) => line.startsWith(lp.prefix));
    if (level) {
      current = { key: level.key, title: level.title, items: [] };
      sections.push(current);
      continue;
    }
    if (current && line.startsWith('- ')) {
      current.items.push(line.slice(2).trim());
    }
  }
  return { h1, sections };
}

// ── Build grouped markdown ────────────────────────────────────────────────────
function buildGrouped(sections) {
  const parts = [];

  for (const section of sections) {
    if (section.items.length === 0) continue;

    // Group items by context → kind
    const groups = {};
    for (const item of section.items) {
      const path = extractPath(item);
      const ctx  = getContext(path);
      const kind = getKind(item, path);
      if (!groups[ctx]) groups[ctx] = {};
      if (!groups[ctx][kind]) groups[ctx][kind] = [];
      groups[ctx][kind].push(item);
    }

    let md = `## ${section.title} (${section.items.length})\n\n`;

    for (const ctx of Object.keys(groups).sort()) {
      md += `\n### ${ctx}\n`;
      for (const kind of KIND_ORDER) {
        const items = groups[ctx]?.[kind];
        if (!items || items.length === 0) continue;
        md += `\n#### ${KIND_LABEL[kind]}\n\n`;
        for (const item of items) md += `- ${item}\n`;
      }
    }

    parts.push(md);
  }

  return parts.join('\n---\n\n') + '\n';
}

// ── Main ──────────────────────────────────────────────────────────────────────
const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, '..');

let files = process.argv.slice(2);

if (files.includes('--all')) {
  files = [];
  const scan = (dir) => {
    for (const entry of readdirSync(dir, { withFileTypes: true })) {
      const full = join(dir, entry.name);
      if (entry.isDirectory()) { scan(full); continue; }
      if (entry.name.endsWith('.md') && entry.name !== 'README.md' && /\d{4}-\d{2}-\d{2}/.test(entry.name)) {
        files.push(full);
      }
    }
  };
  scan(join(root, 'PlatformApi'));
}

if (files.length === 0) {
  console.error('Usage: node Scripts/regroup-changelogs.mjs <file.md> ... | --all');
  process.exit(1);
}

for (const f of files) {
  const abs     = resolve(f);
  const content = readFileSync(abs, 'utf8');
  const { h1, sections } = parseFile(content);

  if (sections.length === 0) {
    console.log(`SKIP  ${abs} — no change sections found`);
    continue;
  }

  const body = buildGrouped(sections);
  const out  = h1 ? `${h1}\n\n${body}` : body;

  writeFileSync(abs, out);
  const total = sections.reduce((s, sec) => s + sec.items.length, 0);
  console.log(`OK    ${abs} — ${total} items regrouped`);
}
