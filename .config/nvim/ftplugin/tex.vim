let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
let g:livepreview_engine = 'xelatex'

command! WordCount :!detex %:p | wc
nnoremap <F5> :!pdflatex -output-directory=dist/ -interaction=nonstopmode '%:p'<CR>
nnoremap <F6> :!xelatex -output-directory=dist/ -interaction=nonstopmode '%:p'<CR>
nnoremap <F7> :!biber -output-directory=dist/ '%:r'<CR>
