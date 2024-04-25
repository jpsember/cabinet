#!/usr/bin/env bash
set -eu

echo "Pushing games (roms)..."

# Push only the CONTENTS of this directory, by appending a trailing '/':
#
dev push roms/ RetroPie/roms/arcade "$@"
