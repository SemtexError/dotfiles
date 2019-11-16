" Javascript, Typescript and Vue
let darkGray = "#808080" " Dark gray
let green = "#4EC9B0" " green
let blue = "#569CD6" " blue
let lightBlue = "#9CDCFE" " Light blue
let yellow = "#DCDCAA" " yellow
let memberYellow = "#D7BA7D" " Member yellow
let purple = "#C586C0" " Purple

autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.vue set filetype=vue

" Green
highlight vueSurroundingTag guifg=darkGray

" Green
highlight typescriptBOM guifg=#4EC9B0
highlight typescriptClassName guifg=#4EC9B0
highlight typescriptClassHeritage guifg=#4EC9B0
highlight typescriptGlobal guifg=#4EC9B0
highlight typescriptPredefinedType guifg=#4EC9B0
highlight typescriptTypeReference guifg=#4EC9B0
highlight typescriptEnum guifg=#4EC9B0

" Blue
highlight typescriptClassKeyword guifg=#569CD6
highlight typescriptClassExtends guifg=#569CD6
highlight typescriptImport guifg=#569CD6
highlight typescriptOperator guifg=#569CD6
highlight typescriptFuncKeyword guifg=#569CD6
highlight typescriptVariable guifg=#569CD6
highlight typescriptAccessibilityModifier guifg=#569CD6
highlight typescriptTry guifg=#569CD6
highlight typescriptAsyncFuncKeyword guifg=#569CD6
highlight typescriptExceptions guifg=#569CD6
highlight typescriptMethodAccessor guifg=#569CD6
highlight typescriptEnumKeyword guifg=#569CD6

" Light blue
highlight typescriptObjectLabel guifg=#9CDCFE
highlight typescriptBOMWindowProp guifg=#9CDCFE
highlight typescriptDOMFormProp guifg=#9CDCFE
highlight typescriptCall guifg=#9CDCFE
highlight typescriptVariableDeclaration guifg=#9CDCFE
highlight typescriptBlock guifg=#9CDCFE
highlight typescriptFuncCallArgs guifg=#9CDCFE
highlight typescriptNodeGlobal guifg=#9CDCFE
highlight typescriptConditionalParen guifg=#9CDCFE
highlight typescriptIdentifierName guifg=#9CDCFE

" Yellow
highlight typescriptFuncName guifg=#DCDCAA
highlight typescriptStringMethod guifg=#DCDCAA
highlight typescriptMathStaticMethod guifg=#DCDCAA
highlight typescriptArrayMethod guifg=#DCDCAA
highlight typescriptES6SetMethod guifg=#DCDCAA
highlight typescriptObjectStaticMethod guifg=#DCDCAA
highlight typescriptBOMLocationMethod guifg=#DCDCAA
highlight typescriptJSONStaticMethod guifg=#DCDCAA
highlight typescriptGlobalMethod guifg=#DCDCAA

" Member yellow
highlight typescriptDecorator guifg=#D7BA7D
highlight typescriptMember guifg=#D7BA7D

" Purple
highlight typescriptRepeat guifg=#C586C0
highlight typescriptStatementKeyword guifg=#C586C0
highlight typescriptExport guifg=#C586C0
highlight typescriptDefault guifg=#C586C0
highlight typescriptArrowFuncArg guifg=#C586C0
highlight typescriptCastKeyword guifg=#C586C0

" Vue
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
\ }
