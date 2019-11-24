" Javascript, Typescript and Vue

autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.vue set filetype=vue

" Vue
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
\ }
