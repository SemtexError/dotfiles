
" The lines of history to remember
set history=1000

" Automaticly read the file when it's changed outside vim
set autoread

" Saving
nmap <leader>w :w!<cr>
command W w
command WQ wq
command Wq wq

" Syntax
syntax on
colorscheme codedark

" Relative line numbering
set number relativenumber

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Dont redraw while peforming a marco
set lazyredraw

" Show matching braces
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Split
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tabs
set showtabline=2

