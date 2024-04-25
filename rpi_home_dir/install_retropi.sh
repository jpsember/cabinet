#!/usr/bin/env bash
set -eu

sudo apt install -y git lsb-release

cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

cd RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
