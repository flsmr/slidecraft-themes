#!/usr/bin/env bash
# use-generated-layouts.sh
# Swaps layouts/ <-> layouts-generated/ for side-by-side validation.
#
# Usage:
#   # Activate generated layouts:
#   bash use-generated-layouts.sh
#
#   # Restore hand-written layouts:
#   bash use-generated-layouts.sh --restore

set -euo pipefail

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LAYOUTS="$THEME_DIR/layouts"
LAYOUTS_GEN="$THEME_DIR/layouts-generated"
LAYOUTS_BACKUP="$THEME_DIR/layouts-backup"

RESTORE=false
if [[ "${1-}" == "--restore" ]]; then
  RESTORE=true
fi

if [[ "$RESTORE" == false ]]; then
  # Activate generated layouts
  if [[ ! -d "$LAYOUTS_GEN" ]]; then
    echo "ERROR: layouts-generated/ not found. Run generate-layouts.py first." >&2
    exit 1
  fi
  if [[ -d "$LAYOUTS_BACKUP" ]]; then
    echo "WARNING: layouts-backup/ already exists — previous backup in place."
  else
    mv "$LAYOUTS" "$LAYOUTS_BACKUP"
    echo "Moved layouts/ -> layouts-backup/"
  fi
  mv "$LAYOUTS_GEN" "$LAYOUTS"
  echo "Moved layouts-generated/ -> layouts/"
  echo
  echo "ACTIVATED: Slidev now uses generated layouts."
  echo "Run the validator, then restore:"
  echo "  bash use-generated-layouts.sh --restore"
else
  # Restore hand-written layouts
  if [[ ! -d "$LAYOUTS_BACKUP" ]]; then
    echo "ERROR: layouts-backup/ not found. Cannot restore." >&2
    exit 1
  fi
  mv "$LAYOUTS" "$LAYOUTS_GEN"
  echo "Moved layouts/ -> layouts-generated/"
  mv "$LAYOUTS_BACKUP" "$LAYOUTS"
  echo "Moved layouts-backup/ -> layouts/"
  echo
  echo "RESTORED: Slidev now uses hand-written layouts."
fi
