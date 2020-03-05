" Should go in the cs file type but otherwise it won't highlight properly
if system('$PATH')=~ '/mnt/c/WINDOWS'
    let g:OmniSharp_start_server = 1
    let g:OmniSharp_server_path = '/mnt/c/ProgramData/omnisharp/OmniSharp.exe'
    let g:OmniSharp_translate_cygwin_wsl = 1
endif

" let g:OmniSharp_diagnostic_overrides = {
    " \ 'IDE0058': {'type': 'None'},
    " \ 'IDE0008': {'type': 'None'}
" \}

let g:OmniSharp_diagnostic_showid = 1
let g:OmniSharp_autoselect_existing_sln = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_server_stdio = 1
