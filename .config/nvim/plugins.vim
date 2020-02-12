" Download VIM-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/_extensions')
" ====== Appearance ======
    Plug 'sheerun/vim-polyglot' " https://github.com/sheerun/vim-polyglot
    Plug 'junegunn/goyo.vim' " https://github.com/junegunn/goyo.vim

" ====== Files ======
	Plug 'junegunn/fzf' " https://github.com/junegunn/fzf.vim
	Plug 'junegunn/fzf.vim' " https://github.com/junegunn/fzf.vim
    Plug 'liuchengxu/vim-clap' " https://github.com/liuchengxu/vim-clap

" ====== Editor ======
    Plug 'psliwka/vim-smoothie' " https://github.com/psliwka/vim-smoothie
    Plug 'easymotion/vim-easymotion' " https://github.com/easymotion/vim-easymotion
    Plug 'scrooloose/nerdcommenter' " https://github.com/scrooloose/nerdcommenter
    Plug 'wellle/targets.vim' " https://github.com/wellle/targets.vim
    Plug 'tpope/vim-repeat' " https://github.com/tpope/vim-repeat
    Plug 'vim-scripts/SearchComplete' " https://github.com/vim-scripts/SearchComplete

" ====== Helpers ======
    Plug 'andymass/vim-matchup' " https://github.com/andymass/vim-matchup
    Plug 'jiangmiao/auto-pairs' " https://github.com/tpope/vim-repeat

" ====== languages tools ======
    Plug 'dense-analysis/ale' " https://github.com/dense-analysis/ale
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " https://github.com/neoclide/coc.nvim

" ====== Languages ======
    Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' } " https://github.com/OmniSharp/omnisharp-vim
    Plug 'rust-lang/rust.vim', { 'for': 'rs' } " https://github.com/rust-lang/rust.vim

" ====== Other ======
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " https://github.com/xuhdev/vim-latex-live-preview
    Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown','do': 'cd app & yarn install' } " https://github.com/iamcco/markdown-preview.nvim

    " Debugging need fix/merge :(, C# debugging in vim
    " Plug 'puremourning/vimspector' " https://github.com/puremourning/vimspector
call plug#end()
