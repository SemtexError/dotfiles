" Indent
set tabstop=4
set shiftwidth=4
set expandtab

" Default options
set hidden " Allow switching of buffer when it hasn't been saved yet
set encoding=UTF-8 " Default file encoding
set undofile " Enable undo persistence across sessions
set history=10000 " The lines of history to remember
set number relativenumber " Relative line numbering
set ruler " Always show current position
set lazyredraw " Don't redraw while performing a macro
set showmatch " Show matching braces
set wildmode=longest,list,full " Auto complete order of Vim commands
set clipboard+=unnamedplus " Set clipboard to + outside Tmux
set splitbelow splitright " Split below instead of above first
set backspace=eol,start,indent " Configure backspace so it acts as it should act
set completeopt=longest,menuone,preview

" Correct spell file
set spell " Enable spell checking

" No sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set colors to 265
syntax on
set termguicolors

" Automatically read the file when it's changed from the outside
set autoread 
autocmd FocusGained,BufEnter * checktime

" Save as sudo user
command! WS execute 'w !sudo tee % > /dev/null' <bar> edit!

" Return to the last edit position when returning to a buffer
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Map leader to space
let mapleader = " "

" Map jj to escape so that you can exit insert mode easily
inoremap jj <Esc>

" Reload VIM RC
command! Reloadrc source $MYVIMRC
nnoremap <leader>rr :Reloadrc<cr>

" Disable ex mode
nnoremap Q <Nop>

" disable command history (type this way to many times wrong)
nnoremap q: :q

" Split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste on a new line
nnoremap <C-p> :pu<cr>
nnoremap <M-p> :pu!<cr>

" Saving
nnoremap <leader><leader> :w!<cr>
command! W w
command! WQ wq
command! Wq wq
command! Q q

" Maintain visual selection on indent change
xnoremap < <gv
xnoremap > >gv

" Always have n search forward and N search backwards
nnoremap <expr> n 'Nn'[v:searchforward]
xnoremap <expr> n 'Nn'[v:searchforward]
onoremap <expr> n 'Nn'[v:searchforward]

nnoremap <expr> N 'nN'[v:searchforward]
xnoremap <expr> N 'nN'[v:searchforward]
onoremap <expr> N 'nN'[v:searchforward]

" Tags
nnoremap <leader>[ :cprev<CR>
nnoremap <leader>] :cnext<CR>

" Only insert comments automatically with enter (bit ugly but it works)
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : getline('.') =~ '^\s*\"' ? 'O<esc>S' : getline('.') =~ '^\s*\#' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : getline('.') =~ '^\s*\"' ? 'o<esc>S' : getline('.') =~ '^\s*\#' ? 'o<esc>S' : 'o'

" Correct previous spelling mistake
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Remap 0 to the first non blank character
nnoremap 0 ^

" Move buffers
nnoremap gb :bprevious<CR>
nnoremap gn :bnext<CR>

" Move around in insert mode, handy with auto insert braces etc.
inoremap <M-l> <right>
inoremap <M-h> <left>
