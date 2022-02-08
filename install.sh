#!/bin/fish

# load global variables
source (dirname "$0")/.config/fish/vars/global.sh

echo "Applying .my-aliases..."
cp .config ~/ -r

echo "Sourcing fish config..."
source $FISH_CONFIG_DIR/config.fish
