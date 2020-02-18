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
    elseif mode == 's'
        return 'SELECT'
    endif

    return mode
endfunction

" Get the highlight group of the current mode
function! GetCurrentModeHighlight()
    const mode=mode()
    if mode == 'i'
        return '%#StatusModeInsertColor#'
    elseif mode == 'v'
        return '%#StatusModeVisualColor#'
    elseif mode == 'c'
        return '%#StatusModeCommandColor#'
    elseif mode == 'r'
        return '%#StatusModeReplaceColor#'
    elseif mode == 's'
        return '%#StatusModeVisualColor#'
    endif

    return '%#StatusModeNormalColor#'
endfunction

" Get the file progression in percentage
function! GetFilePercentage()
    const byte = line('.')
    const size = line('$')
    let percentage = (byte * 100) / size

    return MakeFixed(percentage)
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

function! GetCurrentColumn()
    let column = virtcol('.')
    return MakeFixed(column)
endfunction

function! GetCurrentRow()
    let row = line('.')
    return MakeFixed(row)
endfunction

" Make number a fixed size so it doesn't jump
function! MakeFixed(number)
    let content = ''
    if a:number < 10
        let content .= '0'
    endif
    let content .= a:number
    return content
endfunction
