#!/usr/bin/env bash
set -euo pipefail

canonical_cta='Talk to Vida about deploying an agent like this for your business.'

if [[ ${1:-} == '--cta' ]]; then
  [[ $# -ge 3 ]] || { echo 'usage: validate-video-copy.sh [--cta "approved CTA"] <file-or-directory> [...]' >&2; exit 2; }
  canonical_cta=$2
  shift 2
fi

[[ $# -ge 1 ]] || { echo 'usage: validate-video-copy.sh [--cta "approved CTA"] <file-or-directory> [...]' >&2; exit 2; }

scratch=$(mktemp)
trap 'rm -f "$scratch"' EXIT

append_text_files() {
  local target=$1
  if [[ -f $target ]]; then
    cat "$target" >> "$scratch"
    printf '\n' >> "$scratch"
    return
  fi
  [[ -d $target ]] || { echo "missing copy target: $target" >&2; exit 2; }
  while IFS= read -r -d '' file; do
    cat "$file" >> "$scratch"
    printf '\n' >> "$scratch"
  done < <(find "$target" -type f \( \
    -name '*.txt' -o -name '*.md' -o -name '*.json' -o -name '*.sh' \
    -o -name '*.html' -o -name '*.js' -o -name '*.jsx' -o -name '*.ts' \
    -o -name '*.tsx' -o -name '*.svg' -o -name '*.srt' -o -name '*.vtt' \
  \) -print0)
}

for target in "$@"; do append_text_files "$target"; done

if rg -n -i 'talk to[[:space:]]+the[[:space:]]+vida' "$scratch"; then
  echo 'invalid Vida CTA copy found: remove the article from "Talk to the Vida"' >&2
  exit 1
fi

if ! rg -Fq "$canonical_cta" "$scratch"; then
  echo "approved CTA not found exactly: $canonical_cta" >&2
  exit 1
fi

echo "video copy validation passed: $canonical_cta"
