#!/bin/fish

#docker
alias dc="docker compose"
alias dcr="dc run"
alias dce="dc exec"
alias dcu="dc up -d"
alias dcd="dc down"
alias dcb="dc up -d --build"

#git
alias gs="git status"
alias gfc="git fetch"
alias gpl="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gbd="git branch -D"
alias gbm="git branch -m"
alias gl="git log --oneline"
alias gc="git commit"
alias gcm="git commit -m"
alias ga="git add ."
alias gr="git reset"
alias gpdo="git push --delete origin"

#branches
alias stage="gco stage"
alias master="gco master"
function ft
	gco feature/$argv
end

#merge requests
function gmr
	set branch (git rev-parse --abbrev-ref HEAD)
	set repo_dir (git rev-parse --show-toplevel)
	set repo (basename $repo_dir)
	set url "https://bitbucket.org/$BB_ORG/$repo/pull-requests/new?source=$branch&t=1"

	echo -e "\n --- New MR URL here:\n --- $url\n"
end

#custom
alias dnsy="sudo nano /etc/resolv.conf"

if type -q exa
	alias ll="exa --icons --git -lhgmUa"
end
