#
# ~/.bashrc
#

cdls() { cd "$@" && ls -hN --color=auto --group-directories-first; }

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ============================
# ========= Exports ==========
# ============================

export VISUAL=nvim
export EDITOR="$VISUAL"

export LANG=en_US.UTF-8
export LV_CTYPE=en_US.UTF-8

# Expand the command history, and ignore if it start with a space
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignorespace
export DOTNET_ROOT=/opt/dotnet
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.scripts"

# Set Bash PS1
export PS1=""
# Append the hostname to the PS1 if we're sshing
if [ -n "$SSH_CLIENT" ]; then
    # PS1="(\e[0;31m\h\[$(tput sgr0)\])\e[0m "
    PS1="(\h\[$(tput sgr0)\]) "
fi
export PS1+='\[\e[0;34m\]${PWD#"${PWD%/*/*}/"}\[\e[0m\]> '


# Alias
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Exports
[ -f "$HOME/.config/exportrc" ] && source "$HOME/.config/exportrc"

# ============================
# ========= Other ============
# ============================

# Start to tmux
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
