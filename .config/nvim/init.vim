" Default options
set encoding=UTF-8 " Default file encoding
set undofile " Enable undo persistence across sessions
set spell " Enable spell checking
set spelllang=en,nl " Set language to English and Dutch
set history=10000 " The lines of history to remember
set autoread " Automatically read the file when it's changed
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
set wildignore+=**/node_modules/** " NodeJS modules
set wildignore+=**/.git/**
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

" No sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set colors to 265
syntax on
set termguicolors
colorscheme dark-plus

" Should go in tex file but otherwise it won't work
let g:livepreview_previewer = 'zathura'
"let g:livepreview_engine = 'xelatex'
let g:livepreview_cursorhold_recompile = 0

" Should go in the cs file type but otherwise it won't highlight properly
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_autoselect_existing_sln=1

" File types
source ~/.config/nvim/filetype.vim

" Plug-in
source ~/.config/nvim/plugins.vim

" Key bindings
source ~/.config/nvim/keybindings.vim

" Debug
source ~/.config/nvim/debug.vim

