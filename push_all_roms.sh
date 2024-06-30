#!/usr/bin/env bash
set -eu

echo "Pushing ALL games (roms)..."

# Push only the CONTENTS of this directory, by appending a trailing '/':
#
dev push all_roms/ RetroPie/roms/arcade "$@"
