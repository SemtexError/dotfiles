inoremap <Esc> <Nop>
" ===================================
" ============= Plugins =============
" ===================================
set nocompatible
filetype off
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()
	" Theme: https://github.com/tomasiser/vim-code-dark
	Plugin 'tomasiser/vim-code-dark'

    " Ctrl+t https://github.com/junegunn/fzf.vim
	Plugin 'junegunn/fzf'
	Plugin 'junegunn/fzf.vim'

	" Status bar: https://github.com/itchyny/lightline.vim
	Plugin 'itchyny/lightline.vim'

	" Ctrl+o: https://github.com/scrooloose/nerdtree
	Bundle 'scrooloose/nerdtree'

    " Show yank: https://github.com/machakann/vim-highlightedyank
    Plugin 'machakann/vim-highlightedyank'

    " Surround: https://github.com/tpope/vim-surround
    Plugin 'tpope/vim-surround'

    " === Javascript ===
    " = Theme
    " https://github.com/leafgarland/typescript-vim
    Plugin 'leafgarland/typescript-vim'

    " https://github.com/ianks/vim-tsx
    Plugin 'ianks/vim-tsx'

    " = Complition
    " https://github.com/Shougo/deoplete.nvim
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'

    " https://github.com/mhartington/nvim-typescript
    Plugin 'mhartington/nvim-typescript'

    " Allow tab in deoplete: https://github.com/ervandew/supertab
    Plugin 'ervandew/supertab'

    " = Linting
    " https://github.com/dense-analysis/ale
    Plugin 'dense-analysis/ale'

    " === CSS ===
    " https://github.com/hail2u/vim-css3-syntax
    Plugin 'hail2u/vim-css3-syntax'

    " = Sassy theme
    " https://github.com/cakebaker/scss-syntax.vim 
    Plugin 'cakebaker/scss-syntax.vim'

call vundle#end() 
filetype plugin indent on

" Fzf
nnoremap <expr> <C-t> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" NerdTree
let g:NERDTreeWinPos = "right"
map <C-o> :NERDTreeToggle<CR>

" Vim highlightedyank
let g:highlightedyank_highlight_duration = 300

" deoplete
let g:deoplete#enable_at_startup = 1

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 0


" ===================================
" ============ !Plugins =============
" ===================================

let mapleader = "\\"

set nospell " Enable spell cehcking
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
set autochdir

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
" map <C-c> "+y
" map <C-v> "+P

nnoremap Q <Nop>

" Split
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

