#!/usr/bin/env bash
set -euo pipefail

# Converts resend.yaml (OpenAPI spec) to resend.json
# Requires: node (v16+), npx

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT="$SCRIPT_DIR/resend.yaml"
OUTPUT="$SCRIPT_DIR/resend.json"

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found" >&2
  exit 1
fi

npx -y js-yaml "$INPUT" > "$OUTPUT"

echo "✓ Generated resend.json ($(wc -c < "$OUTPUT" | tr -d ' ') bytes)"
