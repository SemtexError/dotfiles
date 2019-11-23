" Ensure that it's created once
if exists('g:loaded_statusline')
  finish
endif

let g:loaded_statusline = 1

set guitablabel=test

highlight StatusModeNormalColor guibg=#2c3e50 guifg=#ecf0f1 cterm=bold " Dark gray
highlight StatusModeInsertColor guibg=#95a5a6 guifg=#2C3E50 cterm=bold " Light gray
highlight StatusModeVisualColor guibg=#2980b9 guifg=#ecf0f1 cterm=bold " Blue
highlight StatusModeCommandColor guibg=#d35400 guifg=#ecf0f1 cterm=bold " Orange
highlight StatusModeReplaceColor guibg=#E74C3C guifg=#ecf0f1 cterm=bold " Red
highlight StatusErrorColor guibg=#E74C3C guifg=#ecf0f1 cterm=bold " Red
highlight StatusWarningColor guibg=#F39C12 guifg=#ecf0f1 cterm=bold " Warning

augroup StatusLine
  autocmd!

  autocmd VimEnter,WinEnter,BufWinEnter *
      \ call Update()

    autocmd User ALELintPre,ALELintPost,ALEJobStarted,ALEFixPre,ALEFixPost
        \ call Update()

augroup END

function Update()
    set statusline=%!GetStatusLine()
endfunction

" Get file name
function! GetFileName()
    const fileName = []

    if &readonly
        call add(fileName, "[!]")
    endif

    call add(fileName,  expand('%:t') )
    return join(fileName)
endfunction

" Normalize the current mode
function! GetCurrentMode()
    const mode = mode()
    if mode == 'n'
        return 'NORMAL'
    elseif mode == 'i'
        return 'INSERT'
    elseif mode == 'v'
        return 'VISUAL'
    elseif mode == 'c'
        return 'COMMAND'
    elseif mode == 'r'
        return 'REPLACE'
    endif

    return mode
endfunction

" Get the highlight group of the current mode
function! GetCurrentModeHighlight()
    const mode=mode()
    if mode == 'i'
        return "%#StatusModeInsertColor#"
    elseif mode == 'v'
        return "%#StatusModeVisualColor#"
    elseif mode == 'c'
        return "%#StatusModeCommandColor#"
    elseif mode == 'r'
        return "%#StatusModeReplaceColor#"
    endif

    return "%#StatusModeNormalColor#"
endfunction

" Get the file progression in percentage
function! GetFilePercentage()
    const byte = line2byte(line( "." ))
    const size = line2byte(line( "$" ))
    return (byte * 100) / size
endfunction

" Check if ale is running and has data
function! HasLinted()
  return get(g:, 'ale_enabled', 0) == 1
    \ && getbufvar(bufnr(''), 'ale_linted', 0) > 0
    \ && ale#engine#IsCheckingBuffer(bufnr('')) == 0
endfunction

" Get all the errors from ale
function! GetAleErrors()
    if !HasLinted()
        return 0
    endif

    const l:counts = ale#statusline#Count(bufnr(''))
    return l:counts.error + l:counts.style_error
endfunction

" Get all the warnings from ale
function! GetAleWarnings()
    if !HasLinted()
        return 0
    endif

    const l:counts = ale#statusline#Count(bufnr(''))
    const l:all_errors = l:counts.error + l:counts.style_error
    return l:counts.total - l:all_errors
endfunction

function! GetStatusLine()
    const highlight = GetCurrentModeHighlight()
    const errors = GetAleErrors()
    const warnings = GetAleWarnings()
    
    const statusline = [
        \ highlight,
        \ "%{GetCurrentMode()}",
        \ "%{GetFileName()}",
        \ "%m",
        \ "%="
    \ ]

    if errors > 0
        call extend(statusline, [
            \ "%#StatusErrorColor#",
            \ printf(' %d', errors)
        \ ])
    endif

    if warnings > 0
        call extend(statusline, [
            \ "%#StatusWarningColor#",
            \ printf(' %d', warnings)
        \ ])
    endif

    call extend(statusline, [
        \ highlight,
        \ "%c:%l",
        \ "%{GetFilePercentage()}%%",
        \ "\ "
    \ ])
    return join(statusline)
endfunction

