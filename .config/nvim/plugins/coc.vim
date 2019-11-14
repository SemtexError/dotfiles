" Fix command in Coc setting json
autocmd FileType json syntax match Comment +\/\/.\+$+

" All Coc extensions which will be installed
let g:coc_global_extensions= [ 
    \ 'coc-omnisharp',
    \ 'coc-tsserver',
    "\ 'coc-eslint',
    \ 'coc-vetur',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-pairs',
    \ 'coc-lists',
    \ 'coc-yank'
\]

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
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" control+enter to show code actions
nnoremap <a-cr> :CocAction<cr>

" <leader>+= format selection or document
xmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)

" <leader>+o Show file structure
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
