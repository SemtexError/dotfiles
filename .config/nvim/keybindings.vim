" Map leader
let mapleader = " "

" Disable ex mode
nnoremap Q <Nop>

" Split
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Map jj to escape so that you can exit insert mode easly
imap jj <Esc>

" Saving
nmap <leader><leader> :w!<cr>
command W w
command WQ wq
command Wq wq
command Q q

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Open quickfix in new tab
autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T
