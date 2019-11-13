" dense-analysis/Ale
" https://github.com/dense-analysis/ale
"
" ======
" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
" ======

" Error checking/linting
let g:ale_linter_aliases = {'vue': ['vue', 'scss', 'javascript']}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\   'vue': [ 'stylelint', 'eslint', 'vls'],
\   'cs': ['OmniSharp']
\}

" Fixing those errors
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint', 'trim_whitespace', 'remove_trailing_lines'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}

" Don't fix on save, I can fix my own stuff
let g:ale_fix_on_save = 0

" Step through errors
nmap <silent> ]g :ALEPrevious<CR>
nmap <silent> [g :ALENext<CR>
