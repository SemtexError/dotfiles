let mapleader = "\\"
map <Space> <Leader>

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ===================================
" ============= Plugins =============
" ===================================

" Download vim-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
	" Theme: https://github.com/tomasiser/vim-code-dark
	Plug 'tomasiser/vim-code-dark'

    " Theme: Syntax
    " Plug 'sheerun/vim-polyglot'
    
    " Ctrl+t https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

	" Status bar: https://github.com/itchyny/lightline.vim
	Plug 'itchyny/lightline.vim'

	" Ctrl+o: https://github.com/scrooloose/nerdtree
	Plug 'scrooloose/nerdtree'

    " Show yank: https://github.com/machakann/vim-highlightedyank
    Plug 'machakann/vim-highlightedyank'

    " https://github.com/jiangmiao/auto-pairs
    Plug 'jiangmiao/auto-pairs'

    " https://github.com/scrooloose/nerdcommenter
    Plug 'scrooloose/nerdcommenter'

    " https://github.com/tpope/vim-unimpaired
    Plug 'tpope/vim-unimpaired'

    " https://github.com/easymotion/vim-easymotion
    Plug 'easymotion/vim-easymotion'

    " https://github.com/vim-scripts/SearchComplete: Tab complete in search '/' or '?'
    Plug 'vim-scripts/SearchComplete'
    
    " === Javascript ===
    " = Theme
    " https://github.com/leafgarland/typescript-vim
    Plug 'leafgarland/typescript-vim'

    " https://github.com/ianks/vim-tsx
    Plug 'ianks/vim-tsx'

    " https://github.com/posva/vim-vue
    Plug 'posva/vim-vue'

    " = Complition
    " https://github.com/Shougo/deoplete.nvim
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'

    " = Sassy theme
    " https://github.com/cakebaker/scss-syntax.vim 
    Plug 'cakebaker/scss-syntax.vim'

    " = Linting
    " https://github.com/dense-analysis/ale
    Plug 'dense-analysis/ale'

    " = Autocomplete
    " https://github.com/neoclide/coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " === C# ===
    " https://github.com/OmniSharp/omnisharp-vim
    Plug 'OmniSharp/omnisharp-vim'

    " https://github.com/OrangeT/vim-csharp
    Plug 'OrangeT/vim-csharp'

call plug#end()

" Fzf
nnoremap <expr> <C-t> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" NerdTree
let g:NERDTreeWinPos = "right"
map <C-o> :NERDTreeToggle<CR>

" Easy motion
map <Leader> <Plug>(easymotion-prefix)

" Vim highlightedyank
let g:highlightedyank_highlight_duration = 300

" deoplete
let g:deoplete#enable_at_startup = 1

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"
" set completeopt=menu,longest 
set completeopt=longest,menuone,preview
let g:SuperTabLongestHighlight = 1

" Ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\   'vue': ['eslint'],
\   'cs': ['OmniSharp']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 0


" unimpaired
" Move single selected line
nmap <A-j> ]e
nmap <A-k> [e

" Move multiple selected lines
vmap <A-j> ]egv
vmap <A-k> [egv

source $HOME/.config/nvim/csharp.vim

" ===================================
" ============ !Plugins =============
" ===================================


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

" Set clipboard to + outside tmux
set clipboard+=unnamedplus

" = Custom highlighting
" = C#/csharp
" CS class, green
highlight csClass guifg=#4EC9B0
" CS Types (classes), green
highlight csUserType guifg=#4EC9B0
" Interfaces, yellow
highlight csUserInterface guifg=#B3D19F
highlight csIface guifg=#B3D19F
" Async keyword, blue
highlight csAsync guifg=#569CD6
