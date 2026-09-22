# PlatformApi schema snapshots

Captures point-in-time snapshots of the Platform API (gateway) GraphQL schema in two **modes**: **Cloud** and **SprintUpdate**. (OnPrem has no public endpoint to snapshot, so it isn't captured here — its changelogs will be produced later from manually provided schema files.)

A single GitHub Action — [`take-platform-api-graphql-schema-snapshot.yml`](../.github/workflows/take-platform-api-graphql-schema-snapshot.yml) — handles both. It resolves the mode from the trigger, picks the right endpoint and target folder, and orchestrates the generic scripts in [`../Scripts`](../Scripts). All service-specific values live in the workflow; the scripts stay generic. The run name shows the mode (e.g. *"Snapshot — Cloud"*).

## Folder layout

```
PlatformApi/
├── Cloud/                     # daily + on-demand
│   └── Snapshots/
│       ├── Scheduled/         # daily captures (date-stamped)
│       └── OnDemand/          # manual dispatch captures (date+time-stamped)
└── SprintUpdate/              # every other Tuesday only
    └── Snapshots/
        └── Scheduled/         # (date-stamped)
```

Each mode's folder shape mirrors how it can run: Cloud has both `Scheduled` and `OnDemand`; SprintUpdate is `Scheduled` only.

## Modes

All captures are SDL (`.graphql`) and use `-SkipIfUnchanged` — a capture identical to the most recent snapshot in the same folder is discarded, so unchanged schemas are neither stored nor committed. This workflow only captures snapshots.

| Mode | Trigger | Endpoint | Stores in | Stamp |
|---|---|---|---|---|
| **Cloud** | daily cron (`0 6 * * *`) **and** on-demand dispatch | Cloud endpoint | `Cloud/Snapshots/Scheduled` (cron) or `Cloud/Snapshots/OnDemand` (dispatch) | date (cron) / date+time (dispatch) |
| **SprintUpdate** | every other Tuesday from 2026-09-29 (scheduled only) | *(TODO — confirm)* | `SprintUpdate/Snapshots/Scheduled` | date |

### How the mode is chosen
- **Scheduled** runs map from the cron: `0 6 * * *` (06:00 UTC) → Cloud, `0 7 * * 2` (07:00 UTC Tuesdays) → SprintUpdate. SprintUpdate runs an hour later so it never overlaps the Cloud run on Tuesdays.
- **On-demand** runs use the `mode` dispatch input (`Cloud` only). SprintUpdate is **not** manually runnable — use **Cloud** to test on demand.
- **SprintUpdate** additionally passes a fortnight gate: the Tuesday cron fires weekly, but the run only proceeds when the date is an even number of weeks from the `2026-09-29` anchor (so every other Tuesday: 2026-09-29, 2026-10-13, 2026-10-27, …).

Each run ends with **Commit snapshot** ([`../Scripts/commitSnapshot.ps1`](../Scripts/commitSnapshot.ps1)) — a no-op when nothing new was stored.

> **Note:** the SprintUpdate endpoint is a placeholder (`TODO`) in the workflow — set the real endpoint before relying on it.
