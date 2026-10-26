#!/usr/bin/env bash
# Extracts historical snapshots from fusion-gateway git history.
# For each distinct date from 2024-12-20 to 2026-09-17, saves the last commit
# of that day's schema file as a snapshot in the Scheduled snapshots directory.
set -euo pipefail

FUSION_GATEWAY="${1:-"$(dirname "$0")/../../fusion-gateway"}"
SCHEMA_FILE="Nexar.Gateway.Test/Nexar.Test/SchemaTest.A365Prod.Changes.verified.graphql"
SNAPSHOT_DIR="$(cd "$(dirname "$0")" && pwd)/../PlatformApi/Cloud/Snapshots/Scheduled"

# Get date→commit pairs from main only (--first-parent), dates normalised to UTC.
# git log is newest-first, so the first occurrence per UTC date = last commit of that day.
# Output format: "<hash> <date>" sorted ascending by date.
echo "Reading git history from fusion-gateway..."

mapfile -t PAIRS < <(
  TZ=UTC git -C "$FUSION_GATEWAY" log --first-parent --follow --format="%H %cd" --date=format:%Y-%m-%d -- "$SCHEMA_FILE" \
  | awk '!seen[$2]++ {print $1, $2}' \
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
    (( ++skipped ))
    continue
  fi

  echo "  extract $date ($commit)"
  tmp="$snapshot.tmp"
  trap 'rm -f "$tmp"' EXIT
  git -C "$FUSION_GATEWAY" show "${commit}:${SCHEMA_FILE}" > "$tmp"
  mv "$tmp" "$snapshot"
  trap - EXIT
  (( ++extracted ))
done

echo ""
echo "Done. Extracted: $extracted  Skipped (existing): $skipped"
