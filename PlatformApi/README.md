# PlatformApi schema snapshots & changelogs

Tracks the Platform API (gateway) GraphQL schema over time across three **modes**: **Cloud**, **SprintUpdate**, and **OnPrem**. Three GitHub Actions do the work — capture snapshots, turn them into changelogs, and publish a web page — all orchestrating the generic scripts in [`../Scripts`](../Scripts). All service-specific values live in the workflows; the scripts stay generic.

> **OnPrem** has no public endpoint, so it is **not snapshotted**. Its changelogs are produced from two schema files committed manually (see Change tracking).

## Folder layout

```
PlatformApi/
├── Cloud/                     # snapshots: daily + on-demand
│   ├── Snapshots/
│   │   ├── Scheduled/         # daily captures (date-stamped)
│   │   └── OnDemand/          # manual captures (date+time-stamped)
│   └── Changelogs/
│       ├── Scheduled/         # from daily chained runs
│       ├── OnDemand/          # from manual runs
│       └── Published/         # generated HTML page
├── OnPrem/                    # changelog-only (no public endpoint to snapshot)
│   ├── Snapshots/
│   │   └── OnDemand/          # schema files committed manually
│   └── Changelogs/
│       ├── OnDemand/
│       └── Published/
└── SprintUpdate/              # snapshots: every other Tuesday (+ manual fallback)
    ├── Snapshots/
    │   ├── Scheduled/         # sprint captures (date-stamped)
    │   └── OnDemand/          # manual fallback captures (date-stamped)
    └── Changelogs/
        ├── Scheduled/         # from fortnightly chained runs
        ├── OnDemand/          # from manual (approval-gated) runs
        └── Published/
```

Within each mode, chained/scheduled runs use the `Scheduled` sub-folders and manual runs use `OnDemand`; `Published/` holds that mode's generated web page.

## Snapshot capturing GitHub action

[`take-platform-api-graphql-schema-snapshot.yml`](../.github/workflows/take-platform-api-graphql-schema-snapshot.yml) captures SDL snapshots. It resolves the mode from the trigger, picks the endpoint and target folder, and downloads the schema. All captures use `-SkipIfUnchanged`, so a capture identical to the latest one in that folder is discarded. The run name shows the mode (e.g. *"Snapshot — Cloud"*).

| Mode | Trigger | Stores in | Stamp |
|---|---|---|---|
| **Cloud** | daily cron (`0 6 * * *`) **and** on-demand dispatch | `Cloud/Snapshots/Scheduled` (cron) or `Cloud/Snapshots/OnDemand` (dispatch) | date (cron) / date+time (dispatch) |
| **SprintUpdate** | every other Tuesday (`0 13 * * 2`, from 2026-09-29) **and** manual fallback | `SprintUpdate/Snapshots/Scheduled` (cron) or `SprintUpdate/Snapshots/OnDemand` (fallback) | date |

- **Cron → mode:** `0 6 * * *` (06:00 UTC) → Cloud; `0 13 * * 2` (13:00 UTC Tuesdays) → SprintUpdate (later in the day so it never overlaps the Cloud run).
- **Fortnight gate:** the SprintUpdate Tuesday cron fires weekly but only proceeds when the date is an even number of weeks from the `2026-09-29` anchor. A **manual** SprintUpdate run bypasses the gate.
- **SprintUpdate fallback:** the schedule aligns with the dev team's sprint cadence; since cron can be delayed or skipped, a missed sprint can be captured by dispatching SprintUpdate manually → it lands (date-only) in `SprintUpdate/Snapshots/OnDemand`.

## Change tracking GitHub action

[`platform-api-graphql-schema-change-tracker.yml`](../.github/workflows/platform-api-graphql-schema-change-tracker.yml) diffs two snapshots into a Markdown changelog and, when there's a change, rebuilds and commits that mode's web page **in the same run** (so publishing happens in-chain — no separate workflow, no extra token). The run name shows the mode (e.g. *"Changelog — Cloud"*).

- **Automatic (chained):** after a **successful scheduled** snapshot run, it diffs the newest snapshot against the previous one in that mode's `Scheduled` series and writes to `Changelogs/Scheduled`.
- **Manual dispatch:** pick a `mode` and (for OnPrem, required) two schema files; writes to `Changelogs/OnDemand`.

| Mode | Automatic | Manual dispatch | Changelog → |
|---|---|---|---|
| **Cloud** | today vs yesterday (`Snapshots/Scheduled`) | two files or auto-pick | `Changelogs/Scheduled` (auto) / `Changelogs/OnDemand` (manual) |
| **SprintUpdate** | this sprint vs last (`Snapshots/Scheduled`) | two files (**approval-gated**) | `Changelogs/Scheduled` (auto) / `Changelogs/OnDemand` (manual) |
| **OnPrem** | — (never scheduled) | two files from `Snapshots/OnDemand`, or paths (**required**) | `Changelogs/OnDemand` |

No change → nothing is committed; breaking changes are flagged but still committed.

**SprintUpdate approval + published-series protection.** A **manual** SprintUpdate run is gated by the `sprint-changelog-approval` GitHub Environment — a required reviewer must approve before the job runs. This protects the published sprint series from unreviewed manual changelogs. Because publishing merges both folders (below), an approved manual changelog still appears on the page automatically — no promotion/PR step needed. (Chained SprintUpdate runs and other modes are not gated.)

## Publishing GitHub action

Publishing builds one HTML page **per mode** from the committed changelog files, grouped by year (newest first), via [`../Scripts/build-changelog-site.mjs`](../Scripts/build-changelog-site.mjs), committed by [`../Scripts/commitPublished.ps1`](../Scripts/commitPublished.ps1).

- **Automatic:** happens in-chain inside the change-tracker whenever it produces a new changelog.
- **Manual:** [`publish-platform-api-graphql-changelog.yml`](../.github/workflows/publish-platform-api-graphql-changelog.yml) (`workflow_dispatch`) for ad-hoc rebuilds/backfills of a chosen mode.

| Mode | Page built from | Publishes to |
|---|---|---|
| **Cloud** | `Cloud/Changelogs/Scheduled` | `Cloud/Changelogs/Published/index.html` |
| **SprintUpdate** | `SprintUpdate/Changelogs/Scheduled` **+** `OnDemand` (merged, deduped by date — Scheduled wins) | `SprintUpdate/Changelogs/Published/index.html` |
| **OnPrem** | `OnPrem/Changelogs/OnDemand` | `OnPrem/Changelogs/Published/index.html` |

### Page entry titles & file naming

Each entry's heading on the published page is derived from the **changelog file name**, per mode (dates shown as `dd/mm/yyyy`):

| Mode | Changelog file name | Entry title on the page |
|---|---|---|
| **Cloud** | `gateway-changelog-<date>.md` | the new date — `15/09/2026` |
| **SprintUpdate** | `gateway-changelog-<oldDate>-to-<newDate>.md` | the interval — `29/09/2026 - 13/10/2026` |
| **OnPrem** | `gateway-changelog-<ver>-<oldDate>-to-<ver>-<newDate>.md` | version + date interval — `1.6 (26/09/2026) - 1.7 (01/12/2026)` |

Cloud (daily) and SprintUpdate (fortnightly — named with the interval via the tracker's `-IntervalName`) get these names automatically. **OnPrem is not snapshotted**, so when you run the tracker manually for OnPrem, encode the versions in the name yourself — pass `changelog_name` like `gateway-changelog-1.6-2026-09-26-to-1.7-2026-12-01` (or name the two provided schema files `<version>-<date>`, e.g. `gateway-snapshot-1.6-2026-09-26.graphql`, and the from–to name is derived). If no version is present, the page falls back to the plain date interval.

## Committing to the protected `main` branch

The default branch is protected, so all three workflows commit as a dedicated GitHub App — **`graphql-changelog-commit-bot`** — installed on the repo (with **Contents: write**) and added to the branch's **bypass allowlist**. Each run uses `actions/create-github-app-token` to exchange the app credentials for a short-lived installation token, and `checkout` uses that token so the subsequent `git push` acts as the app and is allowed through. This depends on the repository variable **`COMMIT_BOT_APP_ID`** and the repository secret **`COMMIT_BOT_APP_PRIVATE_KEY`** — if the app is uninstalled, removed from the bypass list, or either value is missing/rotated, the commit step will fail to push.

> **Note:** the SprintUpdate (and, later, OnPrem) endpoints are placeholders (`TODO`) in the snapshot workflow — set the real endpoints before relying on them. The `sprint-changelog-approval` Environment must exist in repo settings with required reviewers for the approval gate to work.
