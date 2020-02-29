" WSL specific settings.
" Yea I know WSL sucks

if system('uname -r') =~ "Microsoft"

    let s:clip = '/mnt/c/Windows/System32/clip.exe' 
    if executable(s:clip)
        augroup WSLYank
            autocmd!
            autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
        augroup END
    end


    nnoremap "+p :echo test

endif
