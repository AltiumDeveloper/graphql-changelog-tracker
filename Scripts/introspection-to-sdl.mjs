#!/usr/bin/env node
// Converts an introspection-JSON file to GraphQL SDL and prints it to stdout.
//
// Usage: node introspection-to-sdl.mjs <introspection.json>
//
// The input may be the full introspection response ({ "data": { "__schema" } })
// or just the { "__schema" } payload — the { data } envelope is unwrapped if present.

import { readFileSync } from 'node:fs';
import { buildClientSchema, printSchema } from 'graphql';

const [path] = process.argv.slice(2);
if (!path) {
  console.error('Usage: node introspection-to-sdl.mjs <introspection.json>');
  process.exit(2);
}

const json = JSON.parse(readFileSync(path, 'utf8'));
const schema = buildClientSchema(json.data ?? json);
process.stdout.write(printSchema(schema));
