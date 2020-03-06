" C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_highlight_debug = 1
let g:OmniSharp_selector_ui = 'fzf'

" Disable 'Use explicit type' and 'Variable not initialized' warnings.
let g:OmniSharp_diagnostic_overrides = {
    \ 'IDE0058': {'type': 'None'},
    \ 'IDE0008': {'type': 'None'},
    \ 'IDE0022': {'type': 'None'},
    \ 'IDE0049': {'type': 'None'},
    \ 'RCS1183': {'type': 'None'}
\}

" Code actions
augroup CsharpActions
    autocmd!
    nnoremap <buffer> <M-e> :OmniSharpGlobalCodeCheck<CR>

    " Show documentation (summary) of an object
    nnoremap <buffer> K :OmniSharpDocumentation<CR>

    " Get code action
    nnoremap <buffer> <M-cr> :OmniSharpGetCodeActions<CR>
    nnoremap <buffer> <leader>a :OmniSharpGetCodeActions<cr>

    " Find the implementation (Coc's version doesn't work)
    nnoremap <buffer> gD :OmniSharpFindImplementations<CR>

    " Find the definition (Coc's version doesn't (always) work)
    nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>

    nnoremap <buffer> gr :OmniSharpFindUsages<CR>
    nnoremap <buffer> gs :OmniSharpFindSymbol<CR>

    " Rename
    nnoremap <F2> :OmniSharpRename<CR>

    sign define OmniSharpCodeActions text=!> texthl=csCodeAction
    autocmd CursorHold *.cs call OSCountCodeActions()
augroup end

function! OSCountCodeActions() abort
    if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
    if !OmniSharp#IsServerRunning() | return | endif

    let opts = {
        \ 'CallbackCount': function('s:CBReturnCount'),
        \ 'CallbackCleanup': {-> execute('sign unplace 99')}
    \ }
    call OmniSharp#CountCodeActions(opts)
endfunction

function! s:CBReturnCount(count) abort
    if a:count
        let l = getpos('.')[1]
        let f = expand('%:p')
        execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
    endif
endfunction

