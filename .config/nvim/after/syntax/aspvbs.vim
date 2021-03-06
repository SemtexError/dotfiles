" Include HTML syntax
runtime! syntax/html.vim

" Add the syntax group to the HTML group
syntax cluster htmlPreProc add=aspCode
" Add the syntax group to the JavaScript group
syntax cluster jsAll add=aspCode
syntax cluster jsExpression add=aspCode

" Overwrite the default JavaScript string because I can't add to it
syntax clear jsString
syntax region jsString start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+ contains=aspCode,jsSpecial,@Spell extend

" The default cluster
syntax region aspCode keepend start=+<%=\?+ end=+%>+
            \ contains=aspGlobalObjects, aspTailingWhitespace,aspObjectProp,aspClassDefinition,@aspTypes,
            \ @aspDefault,@aspComments,@aspFunctions,@aspConstants,
            \ @aspStrings,@aspConditionals

" Syntax groups
syntax cluster aspDefault contains=aspStart,aspEnd
syntax cluster aspcomments contains=aspComment,aspMultilineComment
syntax cluster aspFunctions contains=aspFuncCall,aspFunction
syntax cluster aspConstants contains=aspNumber,aspNaN,aspBoolean,aspNull,aspDecleration
syntax cluster aspStrings contains=aspString
syntax cluster aspConditionals contains=aspConditional
syntax cluster aspTypes contains=aspType,aspDebugger

" Start and end
syntax match aspStart /<%=\?/ contained
syntax match aspEnd /%>/ contained

" Declaration
syntax match aspObjectProp contained /\<\K\k*/

" Comment
syntax region aspComment start=+//+ end=/$/ contained
syntax region aspMultilineComment start=/\/\*/ end=/\*\// contained

" Function
syntax match aspFuncCall /\<\K\k*\ze\s*(/
syntax keyword aspFunction function

" Numbers and constants
syntax match aspNumber /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/
syntax keyword aspNumber Infinity
syntax keyword aspNaN NaN
syntax keyword aspBoolean true false
syntax keyword aspNull null undefined

syntax keyword aspDecleration const var let skipwhite skipempty nextgroup=aspVariableDef
syntax match aspVariableDef contained /\<\K\k*/ skipwhite skipempty

" String
syntax region aspString start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+ contains=@spell

" Conditional keyword
syntax keyword aspConditional if
syntax keyword aspConditional else
syntax keyword aspConditional do
syntax keyword aspConditional while
syntax keyword aspConditional in
syntax keyword aspConditional of
syntax keyword aspConditional switch case break default continue
syntax keyword aspConditional for
syntax keyword aspConditional return
syntax keyword aspConditional try catch
syntax keyword aspConditional echo

" Type keywords
syntax keyword aspType this 
syntax keyword aspType new
syntax keyword aspType typeof
syntax keyword aspDebugger debugger

" Server keywords
syntax keyword aspClassDefinition Server
syntax keyword aspClassDefinition Request
syntax keyword aspClassDefinition Response

" Help syntax
syntax match aspTailingWhitespace /\S\zs\s\+$/

" System
syntax keyword aspGlobalObjects ArrayBuffer Array BigInt64Array BigUint64Array Float32Array Float64Array Int16Array 
syntax keyword aspGlobalObjects Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray Boolean 
syntax keyword aspGlobalObjects Buffer Collator DataView Date DateTimeFormat Intl Iterator JSON Map WeakMap WeakSet 
syntax keyword aspGlobalObjects Math Number NumberFormat Object ParallelArray Promise Proxy Reflect RegExp String 
syntax keyword aspGlobalObjects Symbol Uint8ClampedArray WebAssembly console document fetch window

" Custom keywords
syntax keyword aspClassDefinition Framework
syntax keyword aspClassDefinition Functions
