" Disable mapping
let g:EasyMotion_do_mapping = 0

" Set leader
map <Leader> <Plug>(easymotion-prefix)

" <leader>w search for start of word
nmap <leader>w <Plug>(easymotion-bd-w)
nmap <leader>W <Plug>(easymotion-bd-W)

" <leader>e search end of word
nmap <leader>e <Plug>(easymotion-bd-e)
nmap <leader>E <Plug>(easymotion-bd-E)

" <leader>b search end of word
nmap <leader>b <Plug>(easymotion-bd-e)
nmap <leader>B <Plug>(easymotion-bd-E)

" <leader>t search until
nmap <leader>t <Plug>(easymotion-bd-t)
nmap <leader>T <Plug>(easymotion-bd-T)

" <leader>f search for a character
nmap <leader>f <Plug>(easymotion-bd-f)
nmap <leader>F <Plug>(easymotion-bd-F)

" <leader>s search for a character
nmap <leader>s <Plug>(easymotion-s)
