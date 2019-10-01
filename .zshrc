# Enable colors
autoload -U colors && colors

# Change prompt to the current folder (eg: /home/test/downloads)
PS1="$(echo $fg[blue]%/%{$reset_color%})> "

# Enable history
HISTSIZE=10000
SAVEHIST=20000
HISTFILE=~/.config/zsh/history

# Alt backspace to remove a word
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir
bindkey '^H' backward-kill-word

# LS after a cd
function chpwd() {
    emulate -L zsh
    ls -hN --color=auto --group-directories-first
}

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne '\e[5 q'
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Ctrl + Arrow
bindkey '^[[1;5A' beginning-of-line # Up
bindkey '^[[1;5B' end-of-line # Down
bindkey '^[[1;5C' forward-word # Right
bindkey '^[[1;5D' backward-word # Left

# Alt + Arrow
bindkey '^[[1;3A' beginning-of-line # Up
bindkey '^[[1;3B' end-of-line # Down
bindkey '^[[1;3C' forward-word # Right
bindkey '^[[1;3D' backward-word # Left

# Alt + J
bindkey "^k" up-line-or-history    # [CTRL] + Cursor up
bindkey "^j" down-line-or-history  # [CTRL] + Cursor down

# Load alias and exports if they exists
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/exportrc" ] && source "$HOME/.config/exportrc"

# Must be at the end of the file
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

