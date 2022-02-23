#!/bin/fish

if ! type -q fortune
        sudo apt install fortune-mod
end

if ! type -q cowsay
	sudo apt install cowsay
end

# load global variables
source ~/.config/fish/vars/global.sh

echo "Sourcing fish config..."
source $FISH_CONFIG_DIR/config.fish
