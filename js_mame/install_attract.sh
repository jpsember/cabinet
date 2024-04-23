#!/usr/bin/env bash
set -eu

echo "Attempting to install 'attract' program"

sudo apt-get install -Y software-properties-common
sudo add-apt-repository ppa:daveg/attract
sudo apt-get update
sudo apt-get install attract
sudo apt-get upgrade
