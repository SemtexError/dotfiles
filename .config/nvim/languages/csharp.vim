" C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2

" Show documentation (summary) of an object
autocmd FileType cs nnoremap <buffer> <Leader>d :OmniSharpDocumentation<CR>

" Get code action
autocmd FileType cs nnoremap <buffer> <a-cr> :OmniSharpGetCodeActions<CR>

" Find the implementation (Coc's version doesn't work)
autocmd FileType cs nnoremap <buffer> gD :OmniSharpFindImplementations<CR>

" Code actions
augroup OSCountCodeActions
  autocmd!
  autocmd FileType cs set updatetime=500
  autocmd FileType cs sign define OmniSharpCodeActions text=!>
  autocmd FileType cs set signcolumn=yes
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


" = Custom highlighting
" Custom highlight

" CS class, green
autocmd FileType cs highlight csClassType guifg=#4EC9B0
autocmd FileType cs highlight csUserType guifg=#4EC9B0
autocmd FileType cs highlight csAttribute guifg=#4EC9B0

" Interfaces, yellow
autocmd FileType cs highlight csUserInterface guifg=#B3D19F
autocmd FileType cs highlight csIface guifg=#B3D19F

" blue
autocmd FileType cs highlight csClass guifg=#569CD6
autocmd FileType cs highlight csNew guifg=#569CD6
autocmd FileType cs highlight csNewType guifg=#569CD6
autocmd FileType cs highlight csAsync guifg=#569CD6
autocmd FileType cs highlight csXmlTag guifg=#569CD6
autocmd FileType cs highlight xmlTagName guifg=#569CD6
autocmd FileType cs highlight csContextualStatement guifg=#569CD6
autocmd FileType cs highlight csStringFormat guifg=#569CD6

" Light blue
autocmd FileType cs highlight xmlAttrib guifg=#9CDCFE

" Gray
autocmd FileType cs highlight xmlTag guifg=#808080

