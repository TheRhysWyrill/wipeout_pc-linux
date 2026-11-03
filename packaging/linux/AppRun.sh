#!/usr/bin/env bash
# Second half of the AppImage entry point, started by the static AppRun (entry.c) with the host's
# LD_PRELOAD and other injected library paths already removed. Starts the frozen Tk launcher:
# the launcher picks the game folder, runs run.py and handles --play (the game without a window,
# for Steam and shortcuts).
# Usage: wipeout-x86_64.AppImage [--play]
set -euo pipefail
here=$(dirname -- "$(readlink -f -- "$0")")
share=$here/usr/share/gow3

export LD_LIBRARY_PATH="$here/usr/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export GOW3_DATA_DIR=${GOW3_DATA_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/gow3}
mkdir -p "$GOW3_DATA_DIR"

cd -- "$share"
exec "$share/gow3-launcher" "$@"
