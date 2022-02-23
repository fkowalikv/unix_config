function fish_greeting
	if type -q fortune; and type -q cowsay;
		fortune -a -n short | cowsay -f bud-frogs
#	        fortune -a -n short
	else
		echo "to complete installing config execute ~/install.sh ;)"
	end
end
