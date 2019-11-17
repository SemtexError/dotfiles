" Colors, set colors to 265
syntax on
set termguicolors

set t_Co=256
set t_ut=
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Default options
set encoding=UTF-8 " Default file encoding
set undofile " Enable undo persistence across sessions
set spell " Set spell check (English only)
set history=10000 " The lines of history to remember
set autoread " Automatically read the file when it's changed outside VIM
set number relativenumber " Relative line numbering
set ruler " Always show current position
set lazyredraw " Don't redraw while performing a macro
set showmatch " Show matching braces
set laststatus=2 " For light line, 2 is always show
set noshowmode " For Light line
set wildmode=longest,list,full " Auto complete order
set completeopt=longest,menuone,preview
set showtabline=1 " Show file tab only when needed
set cursorline " Enable current line indicator
set clipboard+=unnamedplus " Set clipboard to + outside Tmux
set splitbelow splitright

" Find
set path+=**
set wildmenu
set wildignore+=**/node_modules/** " NodeJS modules
set wildignore+=**/.git/**
set wildignore+=**/bin/** " C# 
set wildignore+=**/bin/** " C# 

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indent
set tabstop=4
set shiftwidth=4
set expandtab

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Plugins
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/autopair.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/easymotion.vim
source ~/.config/nvim/plugins/highlightedyank.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/codedark.vim
source ~/.config/nvim/plugins/nerdcommenter.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/matchup.vim

" Languages
source ~/.config/nvim/languages/csharp.vim
source ~/.config/nvim/languages/javascript.vim
source ~/.config/nvim/languages/css.vim

" Keybindings
source ~/.config/nvim/keybindings.vim

" Debug
source ~/.config/nvim/debug.vim
