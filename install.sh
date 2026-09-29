#!/usr/bin/env bash
set -euo pipefail

plugin_id="local.theme-picker"
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target_dir="$HOME/.config/omarchy/plugins/$plugin_id"

mkdir -p "$target_dir"
cp "$source_dir/manifest.json" "$source_dir/BarWidget.qml" "$source_dir/pick-theme" "$target_dir/"
chmod +x "$target_dir/pick-theme"

omarchy-shell shell rescanPlugins >/dev/null 2>&1 || true
omarchy plugin enable "$plugin_id" --yes >/dev/null 2>&1 || true

echo "Installed Theme and Background Actions in the Omarchy top bar."
echo "Restart the shell if it does not appear: omarchy restart shell"
