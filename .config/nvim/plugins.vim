if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    " Download VIM-plug
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" View the README for plguin explanations
call plug#begin('~/.config/nvim/.extensions')
" ====== Appearance ======
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/goyo.vim'

" ====== Files ======
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-clap'

" ====== Editor ======
    Plug 'psliwka/vim-smoothie'
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdcommenter'
    Plug 'wellle/targets.vim'
    Plug 'tpope/vim-repeat'
    Plug 'vim-scripts/SearchComplete'

" ====== Git ======
    Plug 'rhysd/git-messenger.vim'
    Plug 'airblade/vim-gitgutter'

" ====== Helpers ======
    Plug 'andymass/vim-matchup'
    Plug 'jiangmiao/auto-pairs'

" ====== languages tools ======
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ====== Languages ======
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' }
    Plug 'rust-lang/rust.vim', { 'for': 'rs' }
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'cd app & yarn install' }

" ====== Other ======
    Plug 'puremourning/vimspector'

call plug#end()
