" Fix command in Coc setting json
autocmd FileType json syntax match Comment +\/\/.\+$+

set updatetime=300
set shortmess+=c
set signcolumn=yes
    
" \ 'coc-omnisharp',

" All Coc extensions which will be installed
let g:coc_global_extensions= [ 
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-vetur',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-tailwindcss',
    \ 'coc-rust-analyzer',
    \ 'coc-json',
    \ 'coc-webpack',
    \ 'coc-pairs',
    \ 'coc-lists',
    \ 'coc-explorer',
    \ 'coc-snippets',
    \ 'coc-texlab',
    \ 'coc-bibtex',
    \ 'coc-import-cost',
    \ 'coc-yank',
    \ 'coc-marketplace'
\]

nmap <M-t> :CocCommand explorer<CR>

" control+space to refresh Coc list
inoremap <silent><expr> <c-space> coc#refresh()

" Complete with enter
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Step through errors: in ale.vim

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to implementation
nmap <silent> gD <Plug>(coc-implementation)
" Find all reference
nmap <silent> gr <Plug>(coc-references)
" Rename
nmap <F2> <Plug>(coc-rename)

" Show a yank history list
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

" leader+enter to show code actions
nnoremap <m-cr> :CocAction<cr>
nnoremap <C-cr> :CocAction<cr>
nnoremap <leader>a :CocAction<cr>

" <leader>+= format selection or document
xmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)

" <leader>+o Show file structure
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>

" Show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
