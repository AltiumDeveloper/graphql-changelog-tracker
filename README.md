# graphql-changelog-tracker
Automated GraphQL schema snapshots and changelog, powered by graphql-inspector and GitHub Actions.

There are two scripts:

- **`generateSchemaDiff.ps1`** — captures changes between two schemas as a Markdown changelog.
- **Snapshot script** _(TBD)_ — takes point-in-time snapshots of a live schema.

**GitHub Actions** _(TBD)_ that run these periodically will be referenced here in the future.

## 1. Generating GraphQL schema changes

`Scripts/generateSchemaDiff.ps1` compares two GraphQL schemas using [`@graphql-inspector/core`](https://the-guild.dev/graphql/inspector) and writes a Markdown report that classifies every change as **breaking**, **dangerous**, or **non-breaking**. It runs a small Node helper (`Scripts/schema-diff.mjs`) that calls the library's `diff()` and returns each change with its criticality level, so the report is built from the change objects directly rather than parsed from CLI output. It reads two **local** schema files — either SDL or introspection JSON (the format is detected from the file contents, not the extension) — and can write the report to a local path, a UNC share, or a remote URL via HTTP PUT.

### Prerequisites

- **[Node.js](https://nodejs.org/)** (includes `npm`).
- **Node dependencies** (`@graphql-inspector/core` and `graphql`), installed from the repo root:

  ```bash
  npm ci
  ```

- **PowerShell** to run the script (Windows PowerShell, or [PowerShell 7+](https://learn.microsoft.com/powershell/) on macOS/Linux).

The script preflights for `node` and the diff helper and exits with a helpful message if either is missing.

### How to use

```powershell
.\generateSchemaDiff.ps1 -OldSchema <old> -NewSchema <new> -OutputFile <report.md> [-Rules <rule[,rule...]>] [-IncludeSummary:$true|$false] [-HttpHeaders <hashtable>]
```

Run it from the `Scripts` folder (paths in the examples are relative to it).

#### Supported argument types

The **schema inputs** (`-OldSchema` / `-NewSchema`) are **local files only**:

- **Local file** — SDL (`.graphql`) or an introspection-JSON file. The format is auto-detected from the contents, so an introspection payload saved with a `.graphql` extension is handled transparently.

The **output** (`-OutputFile`) accepts:

- **Filename only** (e.g. `report.md`) → saved in the current directory.
- **Relative or absolute local path** (e.g. `..\Changelog\report.md`, `C:\reports\report.md`).
- **UNC / network share** (e.g. `\\fileserver\schemas\report.md`).
- **HTTP/HTTPS URL** (e.g. `https://host/path/report.md`) → uploaded via HTTP PUT, optionally with `-HttpHeaders`.

#### Rules and default behaviour

The `-Rules` parameter controls which `@graphql-inspector/core` diff rules are applied:

- **Omit `-Rules`** → defaults to `ignoreDescriptionChanges` (description-only changes are not reported).
- **Pass `-Rules`** → your value **fully overrides** the default (it does not merge). Supply one rule or a comma-separated list.
- **Pass `-Rules @()`** → apply **no** rules; the report's **Rules** row shows `_None_`.

Supported rules (the `DiffRule` names from `@graphql-inspector/core`):

- **`ignoreDescriptionChanges`** — don't report changes that only affect descriptions.
- **`dangerousBreaking`** — treat all *dangerous* changes as *breaking* (stricter).
- **`suppressRemovalOfDeprecatedField`** — downgrade removal of a field already marked `@deprecated` from breaking to dangerous.
- **`safeUnreachable`** — treat changes to unreachable parts of the schema as non-breaking.
- **`simplifyChanges`** — collapse related changes (e.g. a removed type and its fields) into fewer entries.

Two other `DiffRule` names exist but require a config object this tool doesn't supply, so they are **not supported** here and are rejected with an error: `considerUsage` (needs a usage data source) and `ignoreDirectives` (needs a directive list — without it, it silently does nothing).

#### Types of changes

The report uses the same three criticality levels that `@graphql-inspector/core` returns, mapped directly to the report's sections:

- **🔴 Breaking** — changes that will break existing clients (e.g. removing a field or type, or making an argument required). When at least one is present, the diff process fails.
- **⚠️ Dangerous** — changes that are backward-compatible but *may* break clients depending on how they're used (e.g. adding a value to an enum, adding a new union member, or changing the default value of an argument).
- **✅ Non-breaking** — safe, backward-compatible changes (e.g. adding a new field or type).

Only categories with changes are rendered — a section is omitted entirely when it has none. When there are no changes at all, the report is a single line: `_No changes detected._`.

#### Summary table (`-IncludeSummary`)

Each report starts with a summary table (status, old/new schema, generated timestamp, rules). It's **shown by default** and can be hidden:

- **Omit `-IncludeSummary`** (or `-IncludeSummary:$true`) → the table is shown.
- **`-IncludeSummary:$false`** → the table is omitted (the report starts straight at the change sections). Use the colon form so PowerShell binds the boolean correctly.

#### Output files never overwrite

If the target report already exists, the script appends ` (1)`, ` (2)`, ` (3)`, … before the extension until it finds a free name — the same way an operating system handles duplicate downloads. For example, repeated runs targeting `gateway-changelog-2026-09-15.md` produce `gateway-changelog-2026-09-15.md`, `gateway-changelog-2026-09-15 (1).md`, `gateway-changelog-2026-09-15 (2).md`, and so on.

No-overwrite protection only exists for file paths; for URLs, the destination server is in charge.

### Examples

Default behaviour (`ignoreDescriptionChanges` applied automatically):

```powershell
.\generateSchemaDiff.ps1 -OldSchema ..\Snapshots\gateway-snapshot-2026-09-14.graphql -NewSchema ..\Snapshots\gateway-snapshot-2026-09-15.graphql -OutputFile ..\Changelog\gateway-changelog-2026-09-15.md
```

Custom rules (overrides the default):

```powershell
.\generateSchemaDiff.ps1 -OldSchema ..\Snapshots\gateway-snapshot-2026-09-14.graphql -NewSchema ..\Snapshots\gateway-snapshot-2026-09-15.graphql -OutputFile ..\Changelog\gateway-changelog-2026-09-15.md -Rules dangerousBreaking,suppressRemovalOfDeprecatedField
```

No rules at all:

```powershell
.\generateSchemaDiff.ps1 -OldSchema ..\Snapshots\gateway-snapshot-2026-09-14.graphql -NewSchema ..\Snapshots\gateway-snapshot-2026-09-15.graphql -OutputFile ..\Changelog\gateway-changelog-2026-09-15.md -Rules @()
```
