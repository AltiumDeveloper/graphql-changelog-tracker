#!/usr/bin/env bash
# Extracts historical snapshots from fusion-gateway git history.
# For each distinct date from 2024-12-20 to 2026-09-17, saves the last commit
# of that day's schema file as a snapshot in the Scheduled snapshots directory.
set -euo pipefail

FUSION_GATEWAY="/Users/hichamseffendji/Projects/fusion-gateway"
SCHEMA_FILE="Nexar.Gateway.Test/Nexar.Test/SchemaTest.A365Prod.Changes.verified.graphql"
SNAPSHOT_DIR="/Users/hichamseffendji/Projects/graphql-changelog-tracker/PlatformApi/Cloud/Snapshots/Scheduled"

# Get date→commit pairs: git log is newest-first, so first occurrence per date = last commit of that day.
# Output format: "<hash> <date>" sorted ascending by date.
echo "Reading git history from fusion-gateway..."

mapfile -t PAIRS < <(
  git -C "$FUSION_GATEWAY" log --follow --format="%H %ai" -- "$SCHEMA_FILE" \
  | awk '{date=$2; if (!seen[date]++) print $1, date}' \
  | sort -k2
)

extracted=0
skipped=0

for pair in "${PAIRS[@]}"; do
  commit="${pair%% *}"
  date="${pair##* }"

  # Filter: 2024-12-20 through 2026-09-17
  if [[ "$date" < "2024-12-20" ]] || [[ "$date" > "2026-09-17" ]]; then
    continue
  fi

  snapshot="$SNAPSHOT_DIR/gateway-snapshot-$date.graphql"
  if [[ -f "$snapshot" ]]; then
    echo "  skip  $date (already exists)"
    ((skipped++))
    continue
  fi

  echo "  extract $date ($commit)"
  git -C "$FUSION_GATEWAY" show "${commit}:${SCHEMA_FILE}" > "$snapshot"
  ((extracted++))
done

echo ""
echo "Done. Extracted: $extracted  Skipped (existing): $skipped"
