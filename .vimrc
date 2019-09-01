" ===================================
" ============= Plugins =============
" ===================================
set nocompatible
filetype off
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()
	" https://github.com/pangloss/vim-javascript
	Plugin 'pangloss/vim-javascript'

	" https://github.com/posva/vim-vue
	Plugin 'posva/vim-vue'

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

	" https://github.com/ycm-core/YouCompleteMe
	Plugin 'ycm-core/YouCompleteMe'

call vundle#end() 
filetype plugin indent on

" OmniSharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_highlight_types = 2

" Markdown
let g:vim_markdown_folding_disabled = 1

" Fzf
map <C-t> :GFiles<CR>

" NerdTree
map <C-o> :NERDTreeToggle<CR>

" Goyo
map <C-f> :Goyo<CR>

" YankStack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" deoplete
let g:deoplete#enable_at_startup = 1

" ===================================
" ============ !Plugins =============
" ===================================

let mapleader = "\\"

set spell " Enable spell cehcking
set history=1000 " The lines of history to remember
set autoread " Automaticly read the file when it's changed outside vim
set number relativenumber " Relative line numbering
set ruler " Always show current position
set lazyredraw " Dont redraw while peforming a marco
set showmatch " Show matching braces
set laststatus=2 " For lightline
set noshowmode " For lightline
set clipboard=unnamed " Gvim clipboard
set wildmode=longest,list,full
set showtabline=2 " tabs
set shiftwidth=4 " Indent width

" Saving
nmap <leader>w :w!<cr>
command W w
command WQ wq
command Wq wq
command Q q

" Syntax
syntax on
colorscheme codedark

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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

" Ctrl C/V
map <C-c> "+y
" map <C-v> "+P

" Split
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

" Move lines
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

