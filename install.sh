#!/bin/fish

# install needed packages
sudo apt install -qy \
fortune-mod \
cowsay \
unzip

# install exa
set EXA_VERSION (curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
if ! type -q exa
	curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v$EXA_VERSION.zip"
	sudo unzip -q exa.zip bin/exa -d /usr/local
	rm -rf exa.zip
else
	echo "exa is already installed ($EXA_VERSION)"
end

# load global variables
source ~/.config/fish/vars/global.sh

echo "Sourcing fish config..."
source $FISH_CONFIG_DIR/config.fish
