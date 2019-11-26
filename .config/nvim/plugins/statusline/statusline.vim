source ~/.config/nvim/plugins/statusline/tabline.vim
source ~/.config/nvim/plugins/statusline/methods.vim

augroup StatusLine
  autocmd!

    " On buffer change
    autocmd VimEnter,WinEnter,BufWinEnter *
        \ call Update()

    " On ALE change
    autocmd User ALELintPre,ALELintPost,ALEJobStarted,ALEFixPre,ALEFixPost
        \ call Update()

augroup END

" Update the status line
function Update()
    set statusline=%!GetStatusLine()
endfunction

" Generate status line
function! GetStatusLine()
    const modeHighlight = GetCurrentModeHighlight()
    const errorCount = GetAleErrors()
    const warningCount = GetAleWarnings()

    let content = ''

    " Current mode with highlight
    let content .= modeHighlight
    let content .= ' '
    let content .= GetCurrentMode()
    let content .= ' '

    " Tabs
    let content .= TabLine()

    " Reset highlight
    let content .= modeHighlight

    " Left/Right separator
    let content .= "%="

    " Display ALE errors
    if errorCount > 0
        let content .= '$#StatusErrorColor#'
        let content .= printf(' %d', errorCount) 
    endif

    " Display ALE warnings
    if warningCount > 0
        let content .= '%#StatusWarningColor#'
        let content .= printf(' %d', warningCount)
    endif

    " Reset highlight
    let content .= modeHighlight

    " column:row
    let content .= '%c:%l'
    let content .= ' '

    " Percentage of cursor in file
    let content .= GetFilePercentage()
    let content .= '%'

    " Padding right
    let content .= ' '
    
    return content
endfunction
