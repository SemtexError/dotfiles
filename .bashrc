#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export VISUAL=vim
export EDITOR="$VISUAL"

export LANG=en_US.UTF-8
export LV_CTYPE=en_US.UTF-8

# Expand the command history, and ignore if it start with a space
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignorespace
export DOTNET_ROOT=/opt/dotnet
export PATH="$PATH:$HOME/.dotnet/tools"
export MSBuildSDKsPath=/opt/dotnet/sdk/2.2.105/Sdks/

# Set Bash PS1
export PS1=""
# Append the hostname to the PS1 if we're sshing
if [ -n "$SSH_CLIENT" ]; then
    # PS1="(\e[0;31m\h\[$(tput sgr0)\])\e[0m "
    PS1="(\h\[$(tput sgr0)\]) "
fi
export PS1+='${PWD#"${PWD%/*/*}/"}> '


alias ..='cd ..'
alias vi='vim'
alias la='ls -la'
alias code='vscodium'
alias mkdir='mkdir -p'
alias ipconfig='ifconfig'
alias xclip='xclip -selection clipboard'
# Color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
