" Disable mapping
let g:EasyMotion_do_mapping = 0

" Set leader
map <Leader> <Plug>(easymotion-prefix)

" <leader>w search for start of word
nmap w <Plug>(easymotion-bd-w)
nmap W <Plug>(easymotion-bd-W)

" <leader>e search end of word
nmap e <Plug>(easymotion-bd-e)
nmap E <Plug>(easymotion-bd-E)

" <leader>b search end of word
nmap b <Plug>(easymotion-bd-e)
nmap B <Plug>(easymotion-bd-E)

" <leader>t search until
nmap t <Plug>(easymotion-bd-t)
nmap T <Plug>(easymotion-bd-T)

" <leader>f search for a character
nmap f <Plug>(easymotion-bd-f)
nmap F <Plug>(easymotion-bd-F)

" <leader>s search for a character
nmap s <Plug>(easymotion-s)
