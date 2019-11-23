" Download VIM-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
    " ====== Appearance
    
	" VsCode dark colors
    " https://github.com/tomasiser/vim-code-dark 
	Plug 'tomasiser/vim-code-dark'

    " Syntax: for a lot of different languages
    " https://github.com/sheerun/vim-polyglot
    Plug 'sheerun/vim-polyglot'

    " Smooth scrolling
    " https://github.com/psliwka/vim-smoothie
    Plug 'psliwka/vim-smoothie'

    " ====== editor

    " Match braces
    " https://github.com/andymass/vim-matchup
    Plug 'andymass/vim-matchup'

    " Fussy file searcher
    " https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

    " Include Most recent files in FZF search
	" https://github.com/SemtexError/fzf-filemru
    Plug 'SemtexError/fzf-filemru'

    " Status bar in bottom of screen
	" https://github.com/itchyny/lightline.vim
	" Plug 'itchyny/lightline.vim'
    " Plug 'maximbaz/lightline-ale'
    
    " Comment code
    " https://github.com/scrooloose/nerdcommenter
    Plug 'scrooloose/nerdcommenter'

    " Easy motion move around the buffer with key bindings
    " https://github.com/easymotion/vim-easymotion
    Plug 'easymotion/vim-easymotion'

    " Search complete auto complete search
    " https://github.com/vim-scripts/SearchComplete
    Plug 'vim-scripts/SearchComplete'

    " More word motion targets
    " https://github.com/wellle/targets.vim
    Plug 'wellle/targets.vim'

    " Fix . repeat
    " https://github.com/tpope/vim-repeat
    Plug 'tpope/vim-repeat'

    " Automatically add braces etc.
    " https://github.com/tpope/vim-repeat
    Plug 'jiangmiao/auto-pairs'
    
    " ====== languages

    " Lint multiple languages
    " https://github.com/dense-analysis/ale
    Plug 'dense-analysis/ale'

    " Auto complete multiple languages
    " https://github.com/neoclide/coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " .NET language server
    " https://github.com/OmniSharp/omnisharp-vim
    Plug 'OmniSharp/omnisharp-vim'

    " Debugging need fix/merge :(, C# debugging in vim
    " https://github.com/puremourning/vimspector
    " Plug 'puremourning/vimspector'
call plug#end()
