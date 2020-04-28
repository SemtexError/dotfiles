autoload -U +X compinit && compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
autoload -U +X bashcompinit && bashcompinit

# Hide % symbol randomly showing up?
unsetopt PROMPT_SP

# Enable colors
autoload -U colors && colors

# Change prompt to the two upper folders (e.g user/downloads)
setopt PROMPT_SUBST
PROMPT='%F{blue}${PWD#"${PWD%/*/*}/"}%f> '

# If in SSH append a prefix
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    prompt="(SSH) $PROMPT"
    export TERM=vt100
# If it's not a WSL terminal
elif [[ ! $(uname -r) =~ Microsoft$  ]]; then
    export TERM=screen-256color
fi

# Enable history
HISTSIZE=10000
SAVEHIST=20000
HISTFILE=~/.config/zsh/history

## Ignore all repetitions of commands
setopt HIST_IGNORE_ALL_DUPS

## Do not display the string found earlier
setopt HIST_FIND_NO_DUPS

## Ignore rows if they are duplicates
setopt HIST_IGNORE_DUPS
 
## Delete empty lines from history file
setopt HIST_REDUCE_BLANKS

## Ignore a record starting with a space
setopt HIST_IGNORE_SPACE

## Do not add history and fc commands to the history
setopt HIST_NO_STORE

## Ignore a record starting with a space
setopt HIST_IGNORE_SPACE

# Backward kill words with backspace
[ -f "$HOME/.config/zsh/lscdrc" ] && source "$HOME/.config/zsh/lscdrc"

# Backward kill words with backspace
[ -f "$HOME/.config/zsh/backwardskillrc" ] && source "$HOME/.config/zsh/backwardskillrc"

# Vi cursor style
[ -f "$HOME/.config/zsh/vicursorrc" ] && source "$HOME/.config/zsh/vicursorrc"

# Key bindings
[ -f "$HOME/.config/zsh/keybindingsrc" ] && source "$HOME/.config/zsh/keybindingsrc"

# Alias
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Exports
[ -f "$HOME/.config/exportrc" ] && source "$HOME/.config/exportrc"

export ADOTDIR=$HOME/.config/zsh/antigen/

# Download Plugin manager if it doesn't exists
if [ ! -f "$HOME/.config/zsh/antigen.zsh" ]; then
    curl -L git.io/antigen > $HOME/.config/zsh/antigen.zsh
fi

# Load Plugins with plugin manager
if [ -f "$HOME/.config/zsh/antigen.zsh" ]; then
    source $HOME/.config/zsh/antigen.zsh

    # 256 colors
    antigen bundle chrissicool/zsh-256color

    # Highlight zsh commands
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle zsh-users/zsh-syntax-highlighting

    # Load plugins
    antigen apply
fi

ls
