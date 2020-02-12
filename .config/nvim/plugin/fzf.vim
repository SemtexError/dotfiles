" Ctrl+t to search for a file in the current directory
nnoremap <silent> <expr> <C-t> (len(system('git rev-parse')) ? 
            \ ':Files' : 
            \ ':call fzf#vim#gitfiles("--cached --exclude-standard --others", fzf#vim#with_preview("right"))'
            \ )."\<cr>"
