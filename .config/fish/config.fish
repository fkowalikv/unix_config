set FISH_CONFIG_DIR ~/.config/fish

if test -e $FISH_CONFIG_DIR/vars/global.sh
	source $FISH_CONFIG_DIR/vars/global.sh
end

if test -e $FISH_CONFIG_DIR/aliases/my-aliases.sh
echo "Sourcing my-aliases..."
	source $FISH_CONFIG_DIR/aliases/my-aliases.sh
end

if test -e $FISH_CONFIG_DIR/aliases/my-projects.sh
	source $FISH_CONFIG_DIR/aliases/my-projects.sh
end
