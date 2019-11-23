let s:green = "2ecc71"

" Ignore
let g:NERDTreeIgnore = ['^node_modules$']

" Open on the right
let g:NERDTreeWinPos = "right"

" Highlight the entire name
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Highlight custom
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['cs'] = s:green
let g:NERDTreeExtensionHighlightColor['vue'] = s:green

" Sync NERDTree with the current buffer
let g:nerdtree_sync_cursorline = 1


" nnoremap <m-t> :NERDTreeToggle<CR>
