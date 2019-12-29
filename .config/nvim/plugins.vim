" Download VIM-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/_extensions')
" ====== Appearance ======

    " Syntax: for a lot of different languages
    " https://github.com/sheerun/vim-polyglot
    Plug 'sheerun/vim-polyglot'

" ====== editor ======

    " Smooth scrolling
    " https://github.com/psliwka/vim-smoothie
    Plug 'psliwka/vim-smoothie'

    " Editor config
    " https://github.com/editorconfig/editorconfig-vim
     Plug 'editorconfig/editorconfig-vim'

    " Match braces
    " https://github.com/andymass/vim-matchup
    Plug 'andymass/vim-matchup'

    " For file content searching
    " https://github.com/liuchengxu/vim-clap
    Plug 'liuchengxu/vim-clap'

    " Fussy file searcher
    " https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

    " Include Most recent files in FZF search
	" https://github.com/SemtexError/fzf-filemru
    Plug 'SemtexError/fzf-filemru'
    
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
    
" ====== languages tools ======

    " Lint multiple languages
    " https://github.com/dense-analysis/ale
    Plug 'dense-analysis/ale'

    " Auto complete multiple languages
    " https://github.com/neoclide/coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ====== languages ======

    " .NET language server
    " https://github.com/OmniSharp/omnisharp-vim
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' }

    " Latex live reload
    " https://github.com/xuhdev/vim-latex-live-preview
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    Plug 'rust-lang/rust.vim', { 'for': 'rs' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
call plug#end()

" Debugging need fix/merge :(, C# debugging in vim
" https://github.com/puremourning/vimspector
" Plug 'puremourning/vimspector'
