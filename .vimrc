" ===================================
" ============= Plugins =============
" ===================================
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

	" https://github.com/OmniSharp/omnisharp-vim
	Bundle 'OmniSharp/omnisharp-vim'
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

" ===================================
" ============ !Plugins =============
" ===================================

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

" Saving
nmap <leader>w :w!<cr>
command W w
command WQ wq
command Wq wq

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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Ctrl C/V
map <C-c> "+y
map <C-v> "+P

" Split
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
