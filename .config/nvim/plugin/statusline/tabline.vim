" Hide tab line
set showtabline=0

" Check if tab line is supported
if !exists('+showtabline')
  finish
endif

" Create tab line
function! TabLine()
    let content = ''

    let currentIndex = tabpagenr()

    let index = 1
    while index <= tabpagenr('$')
        " All buffers
        let bufferLists = tabpagebuflist(index)
        let windowIndex = tabpagewinnr(index)
        let bufferIndex = bufferLists[windowIndex - 1]

        " Highlight
        let content .= (currentIndex == index ? '%#TabLineSelected#' : '%#TabLine#')

        " Padding left
        let content .= ' '

        " Index of tab
        let content .= index
        let content .= ': '

        " Read only
        let readOnly = getbufvar(bufferIndex, "&readonly")
        let content .= (readOnly ? '!' : '')

        " Name of tab
        let fileName = bufname(bufferIndex)
        let fileName = fnamemodify(fileName, ':p:t')
        let fileName = (fileName == '' ? '[no name]' : fileName)
        let content .= fileName

        " Modified
        let modified = getbufvar(bufferIndex, "&modified")
        let content .= (modified ? '+' : '')

        " Padding right
        let content .= ' '

        " Increase buffer index
        let index += 1
    endwhile

    " Reset highlight
    let content .= '%#TabLine#'

    return content
endfunction

" set tabline=%!TabLine()
