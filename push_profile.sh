#!/usr/bin/env bash
set -eu

echo "Pushing .profile, .bashrc to rpi's home directory"

echo "How do I push just the contents of a directory?"

(cd rpi_home_dir; dev push . /home/pi/ -v)

#dev push rpi_home_dir /home/pi #-v -d
