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
    md = md.replace(/^(#{1,4}) /gm, (_, h) => '#'.repeat(Math.min(h.length + 2, 6)) + ' '); // demote headings under the date
    byDate.set(date, { date, year: date.slice(0, 4), title: entryTitle(mode, f, dates), html: marked.parse(md.trim()) });
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
          <h3><a href="#entry-${e.date}">${escapeHtml(e.title)}</a></h3>
          ${e.html}
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
    article.entry > h3 { margin:0 0 8px; font-size:18px; }
    article.entry > h3 a { color:var(--fg); }
    article.entry h4 { font-size:15px; margin:16px 0 8px; }
    article.entry ul { margin:8px 0; padding-left:22px; }
    article.entry code { background:var(--canvas); padding:2px 6px; border-radius:6px; font-size:85%; }
    article.entry table { border-collapse:collapse; margin:8px 0; }
    article.entry th, article.entry td { border:1px solid var(--border); padding:6px 12px; }
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
