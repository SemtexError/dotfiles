" Plugins ==========================
set nocompatible
filetype off
set rtp+=~/.config/vim/bundle/Vundle.vim

call vundle#begin()
	" https://github.com/pangloss/vim-javascript
	Plugin 'pangloss/vim-javascript'

	" https://github.com/tomasiser/vim-code-dark
	Plugin 'tomasiser/vim-code-dark'

	" https://github.com/plasticboy/vim-markdown
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'

	" https://github.com/junegunn/fzf.vim
	Plugin 'junegunn/fzf'
	Plugin 'junegunn/fzf.vim'

	" https://github.com/tpope/vim-fugitive
	Plugin 'tpope/vim-fugitive'

	" https://github.com/itchyny/lightline.vim
	Plugin 'itchyny/lightline.vim'

	" https://github.com/scrooloose/nerdtree
	Bundle 'scrooloose/nerdtree'

	" https://github.com/maxbrunsfeld/vim-yankstack
	Plugin 'maxbrunsfeld/vim-yankstack'

	" https://github.com/w0rp/ale
	Plugin 'w0rp/ale'
call vundle#end() 

filetype plugin indent on

" OmniSharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_highlight_types = 2

" Fzf
map <C-t> :Files<CR>

" NerdTree
map <C-o> :NERDTreeToggle<CR>

" Lightline
set laststatus=2
set noshowmode

let g:lightline = {
	\ 'colorscheme': 'wombat',
\ }


" Javascript
let g:javascript_plugin_jsdoc = 1

" Yank
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste


