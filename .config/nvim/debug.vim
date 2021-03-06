" Contain debugging features which aren't always included

" Check highlight class
command! HiTest :so $VIMRUNTIME/syntax/hitest.vim

" Display the highlight classes
map <F12> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
