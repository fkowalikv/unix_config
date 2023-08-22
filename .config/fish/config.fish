set FISH_CONFIG_DIR ~/.config/fish

if test -e $FISH_CONFIG_DIR/vars/global.sh
	source $FISH_CONFIG_DIR/vars/global.sh
end

if test -e $FISH_CONFIG_DIR/aliases/my-aliases.sh
	source $FISH_CONFIG_DIR/aliases/my-aliases.sh
end

if test -e $FISH_CONFIG_DIR/aliases/my-projects.sh
	source $FISH_CONFIG_DIR/aliases/my-projects.sh
end

# print command duration after every command
function printtime --on-event fish_postexec
	echo
	echo took (set_color yellow)(expr $CMD_DURATION / 1000)(set_color normal)s
end
