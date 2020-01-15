let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0

nnoremap <F5> :!pdflatex '%:p'<CR>

autocmd BufWritePost * silent !pdflatex '%:p'
