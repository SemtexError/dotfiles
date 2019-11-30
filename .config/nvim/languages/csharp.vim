" C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_highlight_debug = 1

autocmd FileType cs nnoremap <buffer> <M-e> :OmniSharpGlobalCodeCheck<CR>

" Show documentation (summary) of an object
autocmd FileType cs nnoremap <buffer> <Leader>d :OmniSharpDocumentation<CR>

" Get code action
autocmd FileType cs nnoremap <buffer> <a-cr> :OmniSharpGetCodeActions<CR>

" Find the implementation (Coc's version doesn't work)
autocmd FileType cs nnoremap <buffer> gD :OmniSharpFindImplementations<CR>

" Find the definition (Coc's version doesn't (always) work)
autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>

autocmd FileType cs nnoremap <buffer> <leader>gr :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> gs :OmniSharpFindSymbol<CR>

" Code actions
augroup OSCountCodeActions
  autocmd!
  autocmd FileType cs sign define OmniSharpCodeActions text=!> texthl=csCodeAction
  autocmd CursorHold *.cs call OSCountCodeActions()
augroup end

function! OSCountCodeActions() abort
  if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
  if !OmniSharp#IsServerRunning() | return | endif

  let opts = {
      \ 'CallbackCount': function('s:CBReturnCount'),
      \ 'CallbackCleanup': {-> execute('sign unplace 99')}
  \}
  call OmniSharp#CountCodeActions(opts)
endfunction

function! s:CBReturnCount(count) abort
  if a:count
    let l = getpos('.')[1]
    let f = expand('%:p')
    execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
  endif
endfunction

let g:OmniSharp_highlight_groups = {
\ 'csUserIdentifier': [
\   'constant name', 'enum member name', 'field name', 'identifier',
\   'local name', 'parameter name', 'property name', 'static symbol', 'namespace name'],
\ 'csUserInterface': ['interface name'],
\ 'csUserMethod': ['extension method name', 'method name'],
\ 'csUserType': ['class name', 'enum name', 'struct name']
\}
