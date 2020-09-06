" Indent
set tabstop=4
set shiftwidth=4
set expandtab

" Default options
set encoding=UTF-8          " Default file encoding
set colorcolumn=120         " Create a line on 120 column to indicate long lines.
set hidden                  " Allow switching of buffer when it hasn't been saved yet
set undofile                " Enable undo persistence across sessions
set history=10000           " The lines of history to remember
set number relativenumber   " Relative line numbering
set ruler                   " Always show current position
set lazyredraw              " Don't redraw while performing a macro
set showmatch               " Show matching braces
set clipboard+=unnamedplus  " Set clipboard to + outside Tmux
set splitbelow splitright   " Split below instead of above first
set backspace=eol,start,indent  " Configure backspace so it acts as it should act
set wildmode=longest,list,full  " Auto complete order of Vim commands
set completeopt=longest,menuone,preview
if has('nvim')
    set cursorline " Enable current line indicator
endif

" Correct spell file
set spell " Enable spell checking
if has('nvim')
    set spelllang=en,nl " Set language to English and Dutch
    set spellfile=~/.config/nvim/spell/spelling.utf-8.add
endif

" No sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set colors to 265
syntax on
set termguicolors
if has('nvim')
    colorscheme dark-plus
endif

" Automatically read the file when it's changed from the outside
set autoread 
autocmd FocusGained,BufEnter * checktime

" Save as sudo user
command! WS execute 'w !sudo tee % > /dev/null' <bar> edit!

" Return to the last edit position when returning to a buffer
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
