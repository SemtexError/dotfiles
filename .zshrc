# Enable colors
autoload -U colors && colors

# Change prompt to the two upper folders (e.g user/downloads)
setopt PROMPT_SUBST
PROMPT='%F{blue}${PWD#"${PWD%/*/*}/"}%f> '

# Enable history
HISTSIZE=10000
SAVEHIST=20000
HISTFILE=~/.config/zsh/history

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


# Auto complete
fpath=(path/to/zsh-completions/src $fpath)

# Must be at the end of the file
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
