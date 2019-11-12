inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_global_extensions= [ 
            \ 'coc-omnisharp',
            \ 'coc-vetur',
            \ 'coc-pairs',
            \ 'coc-css',
            \ 'coc-json',
            \ 'coc-eslint',
            \ 'coc-lists',
            \ 'coc-yank'
            \]


autocmd FileType json syntax match Comment +\/\/.\+$+

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F2> <Plug>(coc-rename)

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <a-cr> :CocAction<cr>
