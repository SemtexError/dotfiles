" F3 to search for text in the current directory
nnoremap <F3> :Clap! grep<CR>
nnoremap <C-F3> :Clap! grep ++query=
vnoremap <F3> :Clap! grep ++query=@visual<CR>
nnoremap <F4> :Clap! files<CR>
let g:clap_layout = {'relative': 'editor'}
