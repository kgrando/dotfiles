alias llr='ls -lrt'
alias la='ls -A'
alias l='ls -CF'
alias bcat='batcat --paging=never'
alias bat='batcat --paging=never'
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias's to modified commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias mkdir='mkdir -p'
# alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias apt-get='sudo apt-get'
alias multitail='multitail --no-repeat -c'


# Change directory aliases
alias home='cd $HOME'
alias dl='cd $HOME/Downloads'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

if [ "$(uname)" = "Darwin" ]; then
  alias onedrive='cd "$HOME/OneDrive - GrandoAzure"'

else
  alias onedrive="cd /mnt/c/Users/gke/OneDrive\ -\ GrandoAzure/"
fi


# Alias's for multiple directory listing commands
alias la='ls -Alh' # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Flst' # long listing format
alias llr='ls -Flsrt' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# docker alias
alias dpurge='docker image rm $(docker image ls -q) && docker volume rm $(docker volume ls)' 
alias dc='docker compose'

# Kubernetes

alias k='kubectl'
alias h='helm'
alias ks='kubecm switch'

# SSH
alias asp='ssh root@asp.root.ch -i $HOME/Shell/LoginRootFirewalls.key'
alias sslvpn='ssh root@sslvpn.root.ch -i $HOME/Shell/LoginRootFirewalls.key'
alias sshLoad='ssh-add $HOME/Shell/LoginRootFirewalls.key $HOME/Shell/LoginMTF.key'

#functions

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

## Misc
alias tracert="traceroute"
alias mip="ip --br a"
alias mpip="echo $(wget -qO- https://ipecho.net/plain)"

