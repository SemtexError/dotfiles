" Colors, set colors to 265
syntax on
set termguicolors
set t_Co=256
set t_ut=
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Default options
set spell " Set spell check (English only)
set history=1000 " The lines of history to remember
set autoread " Automaticly read the file when it's changed outside vim
set number relativenumber " Relative line numbering
set ruler " Always show current position
set lazyredraw " Dont redraw while peforming a marco
set showmatch " Show matching braces
set laststatus=2 " For lightline, 2 is always show
set noshowmode " For lightline
set wildmode=longest,list,full " Autocomplete order
set showtabline=1 " Show file tab only when needed
set autochdir " Automaticly create set dir when creating files
set clipboard+=unnamedplus " Set clipboard to + outside tmux

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


" Keybindings
source ~/.config/nvim/keybindings.vim

" Plugins
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/easymotion.vim
source ~/.config/nvim/plugins/highlightedyank.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/unimpaired.vim
source ~/.config/nvim/plugins/codedark.vim
source ~/.config/nvim/plugins/nerdcommenter.vim
source ~/.config/nvim/plugins/lightline.vim

" Languages
source ~/.config/nvim/languages/csharp.vim
source ~/.config/nvim/languages/javascript.vim
source ~/.config/nvim/languages/css.vim

" Debug
source ~/.config/nvim/debug.vim
