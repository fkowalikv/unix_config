#!/bin/fish

echo "Applying .my-aliases..."
cp .my-aliases.sh ~/ -r
cp .config ~/ -r

echo "Sourcing fish config..."
source $FISH_CONFIG_DIR/config.fish
