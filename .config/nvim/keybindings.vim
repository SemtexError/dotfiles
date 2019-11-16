" Map leader to space
let mapleader = " "

" Map jj to escape so that you can exit insert mode easily
inoremap jj <Esc>

" Reload VIM RC
command! Reloadrc source $MYVIMRC

" Disable ex mode
nnoremap Q <Nop>

" Split
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Always have n search forward and N search backwards
nnoremap <expr> n 'Nn'[v:searchforward]
xnoremap <expr> n 'Nn'[v:searchforward]
onoremap <expr> n 'Nn'[v:searchforward]

nnoremap <expr> N 'nN'[v:searchforward]
xnoremap <expr> N 'nN'[v:searchforward]
onoremap <expr> N 'nN'[v:searchforward]

" Only insert comments automatically witch enter (bit ugly but it works)
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : getline('.') =~ '^\s*\"' ? 'O<esc>S' : getline('.') =~ '^\s*\#' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : getline('.') =~ '^\s*\"' ? 'o<esc>S' : getline('.') =~ '^\s*\#' ? 'o<esc>S' : 'o'

" Open quick fix in new tab
autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T
