# graphql-changelog-tracker
Automated GraphQL schema snapshots and changelog, powered by graphql-inspector and GitHub Actions.

There are two scripts:

- **`takeSchemaSnapshot.ps1`** — captures a point-in-time snapshot of a live schema.
- **`generateSchemaDiff.ps1`** — compares two schema snapshots into a Markdown changelog.

A **GitHub Action** runs the snapshot capture on a schedule and on demand — see the _Use case_ at the end of section 1.

## 1. Capturing schema snapshots

`Scripts/takeSchemaSnapshot.ps1` introspects a live GraphQL endpoint and saves a point-in-time snapshot of its schema — as either SDL (`.graphql`, the default) or the raw introspection result (`.json`). SDL is produced by a small Node helper (`Scripts/introspection-to-sdl.mjs`) using `graphql`'s `buildClientSchema` + `printSchema`. Files are named `<Name>-snapshot-<stamp>`, and the script can skip storing a capture that is identical to the previous one.

### Prerequisites

- **[Node.js](https://nodejs.org/)** (includes `npm`) — required for SDL output.
- **Node dependency** (`graphql`), installed from the repo root:

  ```bash
  npm ci
  ```

- **PowerShell** to run the script (Windows PowerShell, or [PowerShell 7+](https://learn.microsoft.com/powershell/) on macOS/Linux).

For `-Format json`, no Node or dependencies are needed — the capture is pure PowerShell. For SDL, the script preflights for `node` and the helper and exits with a helpful message if either is missing.

### How to use

```powershell
.\takeSchemaSnapshot.ps1 -Endpoint <url> -Name <name> -OutputDir <dir> [-Format graphql|json] [-IncludeTime] [-SkipIfUnchanged] [-Headers <hashtable>]
```

Run it from the `Scripts` folder (paths in the examples are relative to it).

#### Output format (`-Format`)

- **`graphql`** (default) — SDL, converted from the introspection result.
- **`json`** — the raw introspection result, saved as-is.

The extension follows the format (`.graphql` or `.json`).

#### Filename stamping (`-IncludeTime`)

- **Omit `-IncludeTime`** → date only, e.g. `gateway-snapshot-2026-09-17.graphql` (good for one capture per day).
- **`-IncludeTime`** → date and time, e.g. `gateway-snapshot-2026-09-17-143022.graphql` — ideal when several snapshots are taken in a single day (e.g. on-demand captures rather than the daily scheduled one), so the capture time is recorded too. (Names never collide either way — an unstamped duplicate just gets a ` (1)`, ` (2)`, … suffix — this simply keeps the time visible.)

#### Skip unchanged (`-SkipIfUnchanged`)

If the new capture is byte-identical to the most recent snapshot of the same format already in `-OutputDir`, it is deleted and nothing is written — so an unchanged schema is neither stored nor committed. Reliable for SDL (whose output is deterministic); raw JSON may differ run-to-run due to response noise.

#### Authentication (`-Headers`)

Pass a hashtable of HTTP headers for the introspection request, e.g. `-Headers @{ Authorization = "Bearer <token>" }`.

#### Output location

`-OutputDir` accepts a local, relative, or UNC path and is created if it doesn't exist. Snapshots never overwrite: if the target name exists, the script appends ` (1)`, ` (2)`, … before the extension.

### Examples

Capture SDL (default):

```powershell
.\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots
```

Capture raw introspection JSON:

```powershell
.\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots -Format json
```

Time-stamped, skip if unchanged, with auth:

```powershell
.\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots -IncludeTime -SkipIfUnchanged -Headers @{ Authorization = "Bearer mytoken" }
```

### Use case

The `take-platform-api-graphql-schema-snapshot` GitHub Action captures Platform API snapshots in three modes — **Cloud** (daily + on-demand), **OnPrem** (on-demand only), and **SprintUpdate** (every other Tuesday) — resolving the endpoint and target folder per mode and storing under `PlatformApi/<mode>/Snapshots/…`. The run name shows the active mode.

## 2. Generating GraphQL schema changes

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
