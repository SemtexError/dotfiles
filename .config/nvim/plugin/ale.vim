" dense-analysis/Ale
" https://github.com/dense-analysis/ale
"
" ======
" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
" ======

" Don't fix on save, I can fix my own stuff
let g:ale_fix_on_save = 0

let g:vue_pre_processors = 'detect_on_enter'
" Error checking/linting
let g:ale_linter_aliases = {'vue': ['vue', 'scss', 'javascript']}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\   'vue': [ 'stylelint', 'eslint', 'vls'],
\   'scss': ['stylelint'],
\   'rs': [ 'cargo', 'clippy', 'rls', 'rustc' ],
\   'cs': ['OmniSharp'],
\   'tex': ['alex', 'chktex', 'lacheck', 'proselint', 'redpen', 'texlab', 'textlint', 'vale', 'writegood', 'languagetool']
\}

" Fixing those errors
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint', 'trim_whitespace', 'remove_trailing_lines'],
\    'scss': ['prettier'],
\    'html': ['prettier'],
\    'markdown': ['textlint']
\}

" Step through errors
nmap <silent> [g :ALEPreviousWrap<CR>
nmap <silent> ]g :ALENextWrap<CR>

nmap <silent> [e <Plug>(ale_previous_wrap_error)
nmap <silent> ]e <Plug>(ale_next_wrap_error)

nmap <silent> [w <Plug>(ale_previous_wrap_warning)
nmap <silent> ]w <Plug>(ale_next_wrap_warning)

