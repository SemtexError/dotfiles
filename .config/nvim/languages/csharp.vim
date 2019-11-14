" C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2

"augroup omnisharp_commands
    "autocmd!

    autocmd FileType cs nnoremap <buffer> <Leader>d :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <a-cr> :OmniSharpGetCodeActions<CR>

    "" Show type information automatically when the cursor stops moving
    "" autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "" The following commands are contextual, based on the cursor position.
    "autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    "autocmd FileType cs nnoremap <buffer> gD :OmniSharpFindImplementations<CR>
    "autocmd FileType cs nnoremap <buffer> gr :OmniSharpFindUsages<CR>

    "autocmd FileType cs nnoremap <buffer> R :OmniSharpRename<CR>

    "autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    "autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

"augroup END

" Code actions
set updatetime=500

sign define OmniSharpCodeActions text=💡

augroup OSCountCodeActions
  autocmd!
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
" autocmd FileType cs syntax match csStringFormat "\$"

" = C#/csharp
" CS class, green
highlight csClassType guifg=#4EC9B0
highlight csUserType guifg=#4EC9B0
highlight csAttribute guifg=#4EC9B0

" Interfaces, yellow
highlight csUserInterface guifg=#B3D19F
highlight csIface guifg=#B3D19F

" blue
highlight csClass guifg=#569CD6
highlight csNew guifg=#569CD6
highlight csNewType guifg=#569CD6
highlight csAsync guifg=#569CD6
highlight csXmlTag guifg=#569CD6
highlight xmlTagName guifg=#569CD6
highlight csContextualStatement guifg=#569CD6
highlight csStringFormat guifg=#569CD6

" Light blue
highlight xmlAttrib guifg=#9CDCFE

" Gray
highlight xmlTag guifg=#808080

