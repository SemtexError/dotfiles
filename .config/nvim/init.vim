" Default options
set hidden " Allow switching of buffer when it hasn't been saved yet
set encoding=UTF-8 " Default file encoding
set undofile " Enable undo persistence across sessions
set spell " Enable spell checking
set spelllang=en,nl " Set language to English and Dutch
set history=10000 " The lines of history to remember
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

" Automatically read the file when it's changed from the outside
set autoread 
autocmd FocusGained,BufEnter * checktime

" Save as SUDO user
command! WS execute 'w !sudo tee % > /dev/null' <bar> edit!

" Return to the last edit position when returning to a buffer
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Find
set path+=**
set wildignore+=**/node_modules/** " NodeJS modules
set wildignore+=**/.git/**
set wildignore+=**/bin/** " C# 
set wildignore+=**/_extensions/**  

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

" Faster searching
if executable('rg')
    set grepprg=rg\ --vimgrep
    set grepformat^=%f:%l:%c:%m

    augroup autoquickfix
        autocmd!
        autocmd QuickFixCmdPost [^l]* cwindow
        autocmd QuickFixCmdPost    l* lwindow
    augroup END
endif

" File types
source ~/.config/nvim/filetype.vim

" Plug-in
source ~/.config/nvim/plugins.vim

" Key bindings
source ~/.config/nvim/keybindings.vim

" Debug
source ~/.config/nvim/debug.vim
