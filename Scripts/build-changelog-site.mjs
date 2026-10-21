#!/usr/bin/env node
// Builds a single self-contained HTML changelog page for one mode, from the dated
// changelog Markdown files in one or more folders, grouped by year (newest first).
//
// Usage: node build-changelog-site.mjs <mode> <outputDir> <inputDir> [<inputDir> ...]
//   <mode>      label shown in the page title (e.g. Cloud, OnPrem, SprintUpdate)
//   <outputDir> folder to write index.html into (created if missing)
//   <inputDir>  one or more folders of <name>-changelog-<date>.md files. When several
//               are given they're merged; if the same date appears in more than one,
//               the earlier-listed folder wins (list the authoritative folder first).

import { readFileSync, writeFileSync, mkdirSync, readdirSync } from 'node:fs';
import { join } from 'node:path';
import { marked } from 'marked';

const [mode, outputDir, ...inputDirs] = process.argv.slice(2);
if (!mode || !outputDir || inputDirs.length === 0) {
  console.error('Usage: node build-changelog-site.mjs <mode> <outputDir> <inputDir> [<inputDir> ...]');
  process.exit(2);
}

const formatDate = (d) => { const [y, m, day] = d.split('-'); return `${day}/${m}/${y}`; }; // dd/mm/yyyy
const escapeHtml = (s) => s.replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]));

// Entry heading, derived from the file name per mode:
//   Cloud        → the new date only              e.g. 15/09/2026
//   SprintUpdate → the date interval (old - new)  e.g. 29/09/2026 - 13/10/2026
//   OnPrem       → version + date interval        e.g. 1.6 (26/09/2026) - 1.7 (01/12/2026)
// Falls back to the new date when the extra info isn't present in the file name.
function entryTitle(m, filename, dates) {
  if (m === 'OnPrem') {
    const pairs = [...filename.matchAll(/(\d+(?:\.\d+)+)-(\d{4}-\d{2}-\d{2})/g)].map((x) => ({ v: x[1], d: x[2] }));
    if (pairs.length >= 2) {
      const a = pairs[0], b = pairs[pairs.length - 1];
      return `${a.v} (${formatDate(a.d)}) - ${b.v} (${formatDate(b.d)})`;
    }
  }
  if (m === 'SprintUpdate' && dates.length >= 2) {
    return `${formatDate(dates[0])} - ${formatDate(dates[dates.length - 1])}`;
  }
  return formatDate(dates[dates.length - 1]); // Cloud / fallback: new date only
}

marked.setOptions({ gfm: true });

// graphql-inspector quotes schema coordinates in its change messages, e.g.
//   Field 'User.name' was removed from object type 'User'
// Turn those 'quoted' names in change bullets into inline code so they render in
// monospace. The lookarounds skip apostrophes inside words (e.g. "doesn't").
const codeSpan = (s) => {
  const fence = '`'.repeat(Math.max(0, ...(s.match(/`+/g) ?? []).map((r) => r.length)) + 1);
  const pad = s.startsWith('`') || s.endsWith('`') ? ' ' : '';
  return `${fence}${pad}${s}${pad}${fence}`;
};
const monospaceNames = (md) =>
  md.replace(/^(\s*[-*] )(.*)$/gm, (_, bullet, text) =>
    bullet + text.replace(/(?<![\w'`])'([^'\n]+?)'(?![\w`])/g, (_m, name) => codeSpan(name)));

// Inject a coloured +/−/Δ badge at the start of each <li> based on the message text.
// Rules:
//   +  — the entity itself is newly added to the API surface
//   −  — the entity itself is removed
//   Δ  — anything else: directive applied/removed, deprecation, description, interface impl, etc.
const getActionBadge = (liContent) => {
  const text = liContent.replace(/<[^>]+>/g, '');

  // Directives applied to existing elements are always Δ, never +
  if (/^Directive\b/.test(text)) return '<span class="bc">Δ</span> ';

  // + : genuine new additions (new field/type/member/input field entering the surface)
  if (/\bwas added to object type\b/.test(text))       return '<span class="ba">+</span> ';
  if (/\bwas added to input object type\b/.test(text)) return '<span class="ba">+</span> ';
  if (/\bwas added to Union type\b/.test(text))        return '<span class="ba">+</span> ';
  if (/\bwas added to enum\b/.test(text))              return '<span class="ba">+</span> ';
  // "Type X was added" — standalone, no "to" clause
  if (/\bwas added\b/.test(text) && !/\bwas added to\b/.test(text)) return '<span class="ba">+</span> ';
  // "Argument x: T added to Y.z" — no 'was', so it's a field-argument addition
  if (/\badded to\b/.test(text) && !/\bwas added to\b/.test(text))  return '<span class="ba">+</span> ';

  // − : removals
  if (/\bwas removed\b/.test(text)) return '<span class="br">−</span> ';

  // Δ : everything else (deprecation, description change, interface impl, directive noise, etc.)
  return '<span class="bc">Δ</span> ';
};
const addActionBadges = (html) =>
  html.replace(/<li>([\s\S]*?)<\/li>/g, (_, inner) => `<li>${getActionBadge(inner)}<span>${inner}</span></li>`);

// Wrap h4/h5/h6 headings top-down and recursively so each level only processes
// content within its own section — prevents lower-level headings from swallowing
// higher-level siblings that come after them.
const wrapCollapsible = (html) => {
  const wrapLevel = (content, tag, cls, innerFn) => {
    const tagRe = new RegExp(`(<${tag}[^>]*>[\\s\\S]*?<\\/${tag}>)`);
    const parts  = content.split(tagRe);
    const rebuilt = [];
    let i = 0;
    while (i < parts.length) {
      if (new RegExp(`^<${tag}`).test(parts[i])) {
        const inner = innerFn ? innerFn(parts[i + 1] ?? '') : (parts[i + 1] ?? '');
        rebuilt.push(`<details open class="${cls}"><summary>${parts[i]}</summary>${inner}</details>`);
        i += 2;
      } else {
        rebuilt.push(innerFn ? innerFn(parts[i]) : parts[i]);
        i++;
      }
    }
    return rebuilt.join('');
  };
  const wrapH6 = (c) => wrapLevel(c, 'h6', 'kind-d', null);
  const wrapH5 = (c) => wrapLevel(c, 'h5', 'ctx-d',  wrapH6);
  return               wrapLevel(html, 'h4', 'sect-d', wrapH5);
};

// Collect entries from all input folders — each changelog file becomes one dated
// entry, deduped by its newest date (first folder listed wins).
const byDate = new Map();
for (const dir of inputDirs) {
  let files = [];
  try {
    files = readdirSync(dir).filter((f) => f.endsWith('.md') && /\d{4}-\d{2}-\d{2}/.test(f));
  } catch {
    console.error(`Input folder not found or empty: ${dir}`);
    continue;
  }
  for (const f of files) {
    const dates = [...f.matchAll(/(\d{4}-\d{2}-\d{2})/g)].map((m) => m[1]);
    const date = dates[dates.length - 1];            // newest date in the file name (group/sort key)
    if (byDate.has(date)) continue;                  // earlier-listed folder wins
    let md = readFileSync(join(dir, f), 'utf8');
    md = md.replace(/^\s*#\s+.*\r?\n/, '');          // drop the file's own H1 title
    md = md.replace(/^\s*(?:\|.*\|[ \t]*\r?\n)+\s*(?:---[ \t]*\r?\n)?/, ''); // drop the leading summary table (+ its --- rule)
    md = md.replace(/ to field '/g, " to '");       // drop redundant "field" word in directive/argument messages
    md = monospaceNames(md);                         // field/type/query names → monospace
    md = md.replace(/^(#{1,4}) /gm, (_, h) => '#'.repeat(Math.min(h.length + 2, 6)) + ' '); // demote headings under the date
    byDate.set(date, { date, year: date.slice(0, 4), title: entryTitle(mode, f, dates), html: wrapCollapsible(addActionBadges(marked.parse(md.trim()))) });
  }
}

const entries = [...byDate.values()].sort((a, b) => b.date.localeCompare(a.date));

// Group by year, newest year first.
const byYear = {};
for (const e of entries) (byYear[e.year] ??= []).push(e);
const years = Object.keys(byYear).sort((a, b) => b.localeCompare(a));

const yearNav = years.map((y) => `<a href="#year-${y}">${y}</a>`).join('');
const body = years.map((y) => `
      <section class="year" id="year-${y}">
        ${byYear[y].map((e) => `
        <article class="entry" id="entry-${e.date}">
          <details open class="entry-d">
            <summary><h3><a href="#entry-${e.date}">${escapeHtml(e.title)}</a></h3></summary>
            ${e.html}
          </details>
        </article>`).join('')}
      </section>`).join('');

const empty = `<p class="empty">No changelog entries yet.</p>`;

const html = `<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>${escapeHtml(mode)} GraphQL schema changelog</title>
  <style>
    :root { --fg:#1f2328; --muted:#59636e; --border:#d1d9e0; --accent:#0969da; --bg:#ffffff; --canvas:#f6f8fa; }
    * { box-sizing: border-box; }
    body { margin:0; color:var(--fg); background:var(--bg);
           font:16px/1.6 -apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif; }
    a { color:var(--accent); text-decoration:none; } a:hover { text-decoration:underline; }
    header.site { border-bottom:1px solid var(--border); background:var(--canvas); }
    .wrap { max-width:1012px; margin:0 auto; padding:0 24px; }
    header.site .wrap { padding:32px 24px; }
    header.site h1 { margin:0 0 4px; font-size:28px; }
    header.site p { margin:0; color:var(--muted); }
    nav.years { position:sticky; top:0; background:var(--bg); border-bottom:1px solid var(--border); z-index:1; }
    nav.years .wrap { display:flex; gap:16px; flex-wrap:wrap; padding:12px 24px; }
    nav.years a { color:var(--muted); font-weight:600; }
    main .wrap { padding:8px 24px 64px; }
    section.year { margin-top:32px; }
    section.year > h2 { font-size:24px; padding-bottom:8px; border-bottom:1px solid var(--border); }
    article.entry { padding:20px 0; border-bottom:1px solid var(--border); }
    .entry-d > summary > h3 { margin:0 0 8px; font-size:18px; }
    .entry-d > summary > h3 a { color:var(--fg); }
    article.entry h4 { font-size:15px; margin:16px 0 8px; }
    article.entry ul { margin:8px 0; padding-left:22px; }
    article.entry code { background:var(--canvas); padding:2px 6px; border-radius:6px; font-size:85%;
                         font-family:ui-monospace,SFMono-Regular,"SF Mono",Menlo,Consolas,"Liberation Mono",monospace; }
    article.entry li { display:flex; align-items:baseline; }
    .ba,.br,.bc { display:inline-flex; align-items:center; justify-content:center; min-width:20px;
                  border-radius:3px; font-size:11px; font-weight:700; padding:1px 3px; flex-shrink:0;
                  margin-right:6px; font-family:ui-monospace,SFMono-Regular,"SF Mono",Menlo,Consolas,"Liberation Mono",monospace; }
    .ba { background:#dafbe1; color:#1a7f37; }
    .br { background:#ffd7d5; color:#cf222e; }
    .bc { background:#fff8c5; color:#9a6700; }
    article.entry table { border-collapse:collapse; margin:8px 0; }
    article.entry th, article.entry td { border:1px solid var(--border); padding:6px 12px; }
    /* ── Collapsible details ───────────────────────────────────────────── */
    details { margin:0; }
    details > summary { list-style:none; cursor:pointer; user-select:none; }
    details > summary::-webkit-details-marker { display:none; }
    details > summary::marker { content:''; }
    /* Chevron injected before the heading text */
    details > summary h3::before,
    details > summary h4::before,
    details > summary h5::before,
    details > summary h6::before {
      content:'▸'; display:inline-block; width:1.1em; font-size:11px;
      color:var(--muted); transition:transform .15s ease;
      font-weight:normal; font-style:normal; }
    details[open] > summary h3::before,
    details[open] > summary h4::before,
    details[open] > summary h5::before,
    details[open] > summary h6::before { transform:rotate(90deg); }
    /* Indent nested levels */
    .ctx-d, .kind-d { padding-left:12px; }
    .kind-d > summary h6 { color:var(--muted); font-size:13px; }
    hr { border:0; border-top:1px solid var(--border); }
    .empty { color:var(--muted); padding:32px 0; }
    footer { color:var(--muted); font-size:13px; border-top:1px solid var(--border); }
    footer .wrap { padding:24px; }
  </style>
</head>
<body>
  <header class="site">
    <div class="wrap">
      <h1>Platform API — ${escapeHtml(mode)}</h1>
      <p>GraphQL schema changelog</p>
    </div>
  </header>
  ${years.length ? `<nav class="years"><div class="wrap">${yearNav}</div></nav>` : ''}
  <main><div class="wrap">${years.length ? body : empty}</div></main>
</body>
</html>
`;

mkdirSync(outputDir, { recursive: true });
writeFileSync(join(outputDir, 'index.html'), html);
console.log(`Wrote ${join(outputDir, 'index.html')} — ${entries.length} entr${entries.length === 1 ? 'y' : 'ies'} across ${years.length} year(s).`);
