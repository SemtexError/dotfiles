" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Find
set path+=**
set wildignore+=**/node_modules/** " NodeJS modules
set wildignore+=**/.git/**
set wildignore+=**/bin/** " C# 
set wildignore+=**/_extensions/**  


" Faster searching
if executable('rg')
    set grepprg=rg\ --vimgrep
    set grepformat^=%f:%l:%c:%m

    augroup autoquickfix
        autocmd!
        autocmd QuickFixCmdPost [^l]* cwindow
        autocmd QuickFixCmdPost l* lwindow
    augroup END
endif
