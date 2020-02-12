let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
let g:livepreview_engine = 'xelatex'

nnoremap <F5> :!pdflatex '%:p'<CR>
