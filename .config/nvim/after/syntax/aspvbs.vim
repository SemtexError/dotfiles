" Include HTML syntax
runtime! syntax/html.vim

" Add the syntax group to the HTML group
syntax cluster htmlPreProc add=aspCode

syntax region aspCode keepend start=+<%+ end=+%>+
            \ contains=aspClassDefinition,aspGlobalObjects,@aspTypes,
            \ @aspDefault,@aspComments,@aspFunctions,@aspConstants,
            \ @aspStrings,@aspConditionals

" Syntax groups
syntax cluster aspDefault contains=aspStart,aspEnd
syntax cluster aspcomments contains=aspComment,aspMultilineComment
syntax cluster aspFunctions contains=aspFuncCall,aspFunction
syntax cluster aspConstants contains=aspNumber,aspNaN,aspBoolean,aspNull,aspDecleration
syntax cluster aspStrings contains=aspString
syntax cluster aspConditionals contains=aspConditional
syntax cluster aspTypes contains=aspType

" Delimiter
syntax match aspStart /<%/ contained
syntax match aspEnd /%>/ contained

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
syntax keyword aspDecleration const let var

" String
syntax region aspString start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+

" If
syntax keyword aspConditional if
syntax keyword aspConditional else
syntax keyword aspConditional do
syntax keyword aspConditional while
syntax keyword aspConditional in
syntax keyword aspConditional of
syntax keyword aspConditional case
syntax keyword aspConditional break
syntax keyword aspConditional default
syntax keyword aspConditional switch
syntax keyword aspConditional for
syntax keyword aspConditional return

" Types
syntax keyword aspType this 
syntax keyword aspType new
syntax keyword aspType typeof

" Custom
syntax keyword aspClassDefinition Framework
syntax keyword aspClassDefinition Server
syntax keyword aspClassDefinition Request

" System
syntax keyword aspGlobalObjects ArrayBuffer Array BigInt64Array BigUint64Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray Boolean Buffer Collator DataView Date DateTimeFormat Intl Iterator JSON Map WeakMap WeakSet Math Number NumberFormat Object ParallelArray Promise Proxy Reflect RegExp String Symbol Uint8ClampedArray WebAssembly console document fetch window











