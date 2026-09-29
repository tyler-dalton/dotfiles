#!/usr/bin/env bash

# Install the extensions tracked in extensions.txt. Re-running this script is
# safe: VS Code leaves already-installed extensions in place.
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
extensions_file="$script_dir/extensions.txt"
code_bin="${CODE_BIN:-code}"
code_args=()

if [[ -n "${VSCODE_USER_DATA_DIR:-}" ]]; then
  code_args+=(--user-data-dir "$VSCODE_USER_DATA_DIR")
fi

if ! command -v "$code_bin" >/dev/null 2>&1; then
  printf 'VS Code command not found: %s\n' "$code_bin" >&2
  exit 1
fi

while IFS= read -r extension || [[ -n "$extension" ]]; do
  [[ -z "$extension" || "$extension" == \#* ]] && continue
  printf 'Installing %s...\n' "$extension"
  "$code_bin" "${code_args[@]}" --install-extension "$extension"
done < "$extensions_file"
