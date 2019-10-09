" Download vim-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
	" Theme: VsCode dark (ish)
    " https://github.com/tomasiser/vim-code-dark 
	Plug 'tomasiser/vim-code-dark'

    " Syntax: for a lot of different languages
    " https://github.com/sheerun/vim-polyglot
    Plug 'sheerun/vim-polyglot'
    
    " Search: Fussy file searcher
    " https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

    " StatusBar: in bottom of screen
	" https://github.com/itchyny/lightline.vim
	Plug 'itchyny/lightline.vim'
    Plug 'w0rp/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'

    " FileDialog: folder and file structure finder
	" https://github.com/scrooloose/nerdtree
	Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'

    " ShowYank: highlight the text that you yanked
    " https://github.com/machakann/vim-highlightedyank
    Plug 'machakann/vim-highlightedyank'

    " AutoInsertPairs: Automaticly insert braces, bracets etc.
    " https://github.com/jiangmiao/auto-pairs
    Plug 'jiangmiao/auto-pairs'

    " Comments: (un)comment code
    " https://github.com/scrooloose/nerdcommenter
    Plug 'scrooloose/nerdcommenter'

    " Commands: to move lines or blocks of code around
    " https://github.com/tpope/vim-unimpaired
    Plug 'tpope/vim-unimpaired'

    " EasyMotion: move around the buffer with key bindings
    " https://github.com/easymotion/vim-easymotion
    Plug 'easymotion/vim-easymotion'

    " SearchComplete: auto complete search
    " https://github.com/vim-scripts/SearchComplete
    Plug 'vim-scripts/SearchComplete'

    " Linting: Lint multiple languages
    " https://github.com/dense-analysis/ale
    Plug 'dense-analysis/ale'

    " Autocomplete: with multiple languages
    " https://github.com/neoclide/coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Dotnet: language server
    " https://github.com/OmniSharp/omnisharp-vim
    Plug 'OmniSharp/omnisharp-vim'

    " CSharp: Snippets and razor syntax
    " https://github.com/OrangeT/vim-csharp
    Plug 'OrangeT/vim-csharp'

    " Debugging: need fix/merge :(, C# debugging in vim
    " https://github.com/puremourning/vimspector
    " Plug 'puremourning/vimspector'

call plug#end()
