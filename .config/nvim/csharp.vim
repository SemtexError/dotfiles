map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2

" CS class, green
highlight csClass guifg=#4EC9B0
" CS Types (classes), green
highlight csUserType guifg=#4EC9B0
" Interfaces, yellow
highlight csUserInterface guifg=#B3D19F
highlight csIface guifg=#B3D19F
" Async keyword, blue
highlight csAsync guifg=#569CD6


augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> gD :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> gr :OmniSharpFindUsages<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>d :OmniSharpDocumentation<CR>

    autocmd FileType cs nnoremap <buffer> <C-space> :OmniSharpGetCodeActions<CR>

    autocmd FileType cs nnoremap <buffer> R :OmniSharpRename<CR>

    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

augroup END

" Tab to auto complete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Close vim when only quickfix is vissible
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END

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
