" Ctrl+t to search for a file in the current directory
nnoremap <expr> <C-t> (len(system('git rev-parse')) ? 
            \ ':Files' : 
            \ ':FilesMru --tiebreak=end --prompt "Git files> "')."\<cr>"
