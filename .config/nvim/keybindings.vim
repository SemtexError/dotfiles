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

" Prevent saving errors
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
