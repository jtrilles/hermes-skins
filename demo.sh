#!/usr/bin/env bash
# Preview all CLI skins — shows color palette and vibe for each
# Usage: ./demo.sh [skin-name]  (omit to list all)

set -e
DIR="${0%/*}/skins"

if [ -n "$1" ]; then
  files="$DIR/$1.yaml"
  [ -f "$files" ] || { echo "Skin not found: $1"; exit 1; }
else
  files="$DIR/*.yaml"
fi

for f in $files; do
  name=$(basename "$f" .yaml)
  desc=$(grep "^description:" "$f" | sed 's/description: //')

  echo ""
  echo "  ┌─────────────────────────────────────────────┐"
  printf "  │  %-43s │\n" "$name"
  echo "  ├─────────────────────────────────────────────┤"
  printf "  │  %-43s │\n" "$desc"
  echo "  ├─────────────────────────────────────────────┤"

  # Extract key colors and print colored blocks
  for key in banner_border banner_title banner_accent ui_accent ui_ok ui_error ui_warn; do
    hex=$(grep "^  $key:" "$f" | head -1 | sed 's/.*: *"\(.*\)".*/\1/')
    if [ -n "$hex" ]; then
      # Convert hex to ANSI truecolor bg
      r=$((16#${hex:1:2}))
      g=$((16#${hex:3:2}))
      b=$((16#${hex:5:2}))
      printf "  │  \e[48;2;%d;%d;%dm     \e[0m  %-20s %s\n" "$r" "$g" "$b" "$key" "$hex"
    fi
  done

  echo "  └─────────────────────────────────────────────┘"
  echo ""
done
