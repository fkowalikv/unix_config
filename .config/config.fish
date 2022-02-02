set FISH_CONFIG_DIR ~/.config/fish

if test -e $FISH_CONFIG_DIR/aliases/my-aliases.sh
	source $FISH_CONFIG_DIR/aliases/my-aliases.sh
end

if test -e $FISH_CONFIG_DIR/aliases/my-projects.sh
	source $FISH_CONFIG_DIR/aliases/my-projects.sh
end
