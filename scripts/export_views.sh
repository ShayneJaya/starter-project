#!/bin/bash

set -uo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

# Load config directly (avoid helper init side-effects)
source "$SCRIPT_DIR/project-config.sh"
source "$SCRIPT_DIR/user-config.sh"

if [[ -z "${DB_CONN:-}" ]]; then
  echo "DB_CONN is not set. Update scripts/user-config.sh"
  exit 1
fi

if [[ -z "${SQLCL:-}" ]]; then
  SQLCL=sql
fi

TMP_FILE="$PROJECT_DIR/release/_all_views_export.tmp"
VIEWS_DIR="$PROJECT_DIR/views"

mkdir -p "$VIEWS_DIR"

echo "Exporting USER views from schema to temp file..."
echo exit | "$SQLCL" "$DB_CONN" @"$SCRIPT_DIR/export_views.sql" "$TMP_FILE"

echo "Splitting DDL into individual files under $VIEWS_DIR ..."
awk -v outdir="$VIEWS_DIR" '
  /^--FILE_START:/ {
    obj=$0
    sub(/^--FILE_START:/, "", obj)
    file=outdir "/" obj ".sql"
    # overwrite the target file each time
    print "" > file
    close(file)
    next
  }
  /^--FILE_END:/ {
    file=""
    next
  }
  {
    if (file != "") print $0 >> file
  }
' "$TMP_FILE"

# Remove the extra leading line inserted above and normalize result
for f in "$VIEWS_DIR"/*.sql; do
  [ -f "$f" ] || continue
  # Remove first blank line introduced by awk init
  sed -i.bak '1{/^$/d;}' "$f"
  rm -f "$f.bak"
done

rm -f "$TMP_FILE"

echo "Done. Exported view files to: $VIEWS_DIR"
