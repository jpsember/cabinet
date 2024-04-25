#!/usr/bin/env bash
set -eu

echo "Pushing some files to rpi's home directory..."

# Push only the CONTENTS of this directory, by appending a trailing '/':
#
dev push rpi_home_dir/ . "$@"
