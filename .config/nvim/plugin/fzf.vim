" Ctrl+t to search for a file in the current directory
nnoremap <expr> <C-t> (len(system('git rev-parse')) ? 
            \ ':Files' : 
            \ ':call fzf#vim#gitfiles("--cached --exclude-standard --others", fzf#vim#with_preview("right"))'
            \ )."\<cr>"

map <C-P> :call fzf#vim#gitfiles('--cached --exclude-standard --others', fzf#vim#with_preview('right'))<CR>
nmap <leader>p :call fzf#vim#files('$VIRTUAL_ENV', fzf#vim#with_preview('right'))<CR>
