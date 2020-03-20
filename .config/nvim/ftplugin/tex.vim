let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
let g:livepreview_engine = 'xelatex'

command! WordCount :!detex %:p | wc
<<<<<<< HEAD
nnoremap <F5> :!pdflatex -output-directory=dist/ '%:p'<CR>
nnoremap <F6> :!xelatex -output-directory=dist/ '%:p'<CR>
=======
nnoremap <F5> :!pdflatex -output-directory=dist/ -interaction=nonstopmode -shell-escape '%:p'<CR>
nnoremap <F6> :!xelatex -output-directory=dist/ -interaction=nonstopmode '%:p'<CR>
>>>>>>> d442cb4916d1ef10898feca8837d470d0e36eeb8
nnoremap <F7> :!biber -output-directory=dist/ '%:r'<CR>
