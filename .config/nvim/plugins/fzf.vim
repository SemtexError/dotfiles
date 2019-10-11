nnoremap <expr> <C-t> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
nmap <silent> <C-h> :History<CR>

