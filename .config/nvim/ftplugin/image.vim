" Add view command and keybinding

command! -buffer View :silent exec "!sxiv % &"
nnoremap <buffer> gd :silent exec "!sxiv % &"<cr>
nnoremap <buffer> gf :silent exec "!sxiv % &"<cr>
