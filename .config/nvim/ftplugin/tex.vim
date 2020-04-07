let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
let g:livepreview_engine = 'xelatex'

command! -buffer WordCount :!detex %:p | wc
nnoremap <buffer> <F5> :!pdflatex -output-directory=dist/ -interaction=nonstopmode -shell-escape '%:p'<CR>
nnoremap <buffer> <F6> :!xelatex -output-directory=dist/ -interaction=nonstopmode '%:p'<CR>
nnoremap <buffer> <F7> :!biber -output-directory=dist/ '%:r'<CR>
