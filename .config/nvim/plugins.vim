if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    " Download VIM-plug
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" View the README for plugin explanations
call plug#begin('~/.config/nvim/.extensions')
" ====== Appearance ======
    Plug 'sheerun/vim-polyglot'

" ====== Files ======
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-clap'

" ====== Editor ======
    Plug 'vim-scripts/SearchComplete'
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdcommenter'
    Plug 'psliwka/vim-smoothie'
    Plug 'jremmen/vim-ripgrep'
    Plug 'wellle/targets.vim'
	Plug 'tpope/vim-surround'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-repeat'

" ====== Git ======
    Plug 'rhysd/git-messenger.vim'
    Plug 'airblade/vim-gitgutter'

" ====== Helpers ======
    Plug 'andymass/vim-matchup'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/vim-peekaboo'

" ====== languages tools ======
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ====== Languages ======
    " C#
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' }

    " Rust
    Plug 'rust-lang/rust.vim', { 'for': 'rs' }

    " Markup
    Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'cd app & yarn install' }
call plug#end()
