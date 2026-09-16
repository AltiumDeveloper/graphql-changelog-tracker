#!/usr/bin/env node
// Diffs two GraphQL schemas with @graphql-inspector/core and prints the changes as
// JSON to stdout: [{ "level": "BREAKING" | "DANGEROUS" | "NON_BREAKING",
//                    "message": "..." }, ...]
//
// Usage: node schema-diff.mjs <oldSchema> <newSchema> [rule1 rule2 ...]
//
// Each schema file may be SDL (.graphql) or an introspection-JSON result
// (the { "data": { "__schema": ... } } payload from an introspection query) —
// the format is detected from the file contents, not the extension.

import { readFileSync } from 'node:fs';
import { buildSchema, buildClientSchema } from 'graphql';
import { diff, DiffRule } from '@graphql-inspector/core';

// Rules that require a config object this tool does not supply. considerUsage
// throws without config; ignoreDirectives silently does nothing — so we reject
// both rather than claim they were applied.
const RULES_REQUIRING_CONFIG = new Set(['considerUsage', 'ignoreDirectives']);

function loadSchema(path) {
  let raw = readFileSync(path, 'utf8');
  if (raw.charCodeAt(0) === 0xfeff) raw = raw.slice(1); // strip a UTF-8 BOM
  if (raw.trimStart().startsWith('{')) {
    // Introspection JSON — unwrap the { data } envelope if present.
    const json = JSON.parse(raw);
    return buildClientSchema(json.data ?? json);
  }
  return buildSchema(raw);
}

const [oldPath, newPath, ...ruleNames] = process.argv.slice(2);
if (!oldPath || !newPath) {
  console.error('Usage: node schema-diff.mjs <oldSchema> <newSchema> [rules...]');
  process.exit(2);
}

// Map requested rule names to the DiffRule functions core expects.
const rules = [];
for (const name of ruleNames) {
  if (!name) continue;
  const rule = DiffRule[name];
  if (!rule) {
    console.error(`Unknown diff rule: ${name}. Valid rules: ${Object.keys(DiffRule).join(', ')}`);
    process.exit(2);
  }
  if (RULES_REQUIRING_CONFIG.has(name)) {
    console.error(`Rule '${name}' requires configuration this tool does not provide and is not supported here.`);
    process.exit(2);
  }
  rules.push(rule);
}

const oldSchema = loadSchema(oldPath);
const newSchema = loadSchema(newPath);

// diff() is async because some rules (e.g. considerUsage) can be.
const changes = await diff(oldSchema, newSchema, rules);

const out = changes.map((c) => ({
  level: c.criticality.level, // BREAKING | DANGEROUS | NON_BREAKING
  message: c.message,
}));

process.stdout.write(JSON.stringify(out));
