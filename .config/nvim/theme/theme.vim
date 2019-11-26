source ~/.config/nvim/theme/methods.vim

let s:gray = "#808080"
let s:green = "#4EC9B0"
let s:blue = "#569CD6"
let s:lightBlue = "#9CDCFE"
let s:yellow = "#DCDCAA"
let s:memberYellow = "#D7BA7D"
let s:interfaceYellow = "#B3D19F"
let s:purple = "#C586C0"

let s:background = "#1E1E1E"
let s:statusLine = "#3C3C3C"

" Vim
call Highlight("TabLine", { "bg": s:statusLine })
call Highlight("TabLineSelected", { "bg": s:background })

call Highlight("StatusModeNormalColor", { "bg": s:statusLine, "fg": "#ecf0f1" })

call Highlight("StatusModeInsertColor", { "bg": "#95a5a6", "fg": "#2C3E50" })

call Highlight("StatusModeVisualColor", { "bg": "#2980b9", "fg": "#ecf0f1" })

call Highlight("StatusModeCommandColor", { "bg": "#2980b9", "fg": "#ecf0f1" })

call Highlight("StatusModeReplaceColor", { "bg": "#E74C3C", "fg": "#ecf0f1" })

call Highlight("StatusErrorColor", { "bg": "#E74C3C", "fg": "#ecf0f1" })

call Highlight("StatusWarningColor", { "bg": "#F39C12", "fg": "#ecf0f1" })

" Green
call Highlight("typescriptBOM", { "fg": s:green })
call Highlight("typescriptClassName", { "fg": s:green })
call Highlight("typescriptClassHeritage", { "fg": s:green })
call Highlight("typescriptGlobal", { "fg": s:green })
call Highlight("typescriptPredefinedType", { "fg": s:green })
call Highlight("typescriptTypeReference", { "fg": s:green })
call Highlight("typescriptEnum", { "fg": s:green })
call Highlight("typescriptFuncCallArg", { "fg": s:green })

call Highlight("csClassType", { "fg": s:green })
call Highlight("csUserType", { "fg": s:green })
call Highlight("csAttribute", { "fg": s:green })

" Blue
call Highlight("vimCommand", { "fg": s:blue })

call Highlight("typescriptClassKeyword", { "fg": s:blue })
call Highlight("typescriptClassExtends", { "fg": s:blue })
call Highlight("typescriptImport", { "fg": s:blue })
call Highlight("typescriptOperator", { "fg": s:blue })
call Highlight("typescriptOperator", { "fg": s:blue })
call Highlight("typescriptFuncKeyword", { "fg": s:blue })
call Highlight("typescriptVariable", { "fg": s:blue })
call Highlight("typescriptAccessibilityModifier", { "fg": s:blue })
call Highlight("typescriptTry", { "fg": s:blue })
call Highlight("typescriptAsyncFuncKeyword", { "fg": s:blue })
call Highlight("typescriptExceptions", { "fg": s:blue })
call Highlight("typescriptMethodAccessor", { "fg": s:blue })
call Highlight("typescriptEnumKeyword", { "fg": s:blue })
call Highlight("jsAsyncKeyword", { "fg": s:blue })
call Highlight("jsImport", { "fg": s:blue })
call Highlight("fromImport", { "fg": s:blue })
call Highlight("jsOperatorKeyword", { "fg": s:blue })

call Highlight("csClass", { "fg": s:blue })
call Highlight("csClass", { "fg": s:blue })
call Highlight("csNew", { "fg": s:blue })
call Highlight("csNewType", { "fg": s:blue })
call Highlight("csAsync", { "fg": s:blue })
call Highlight("csXmlTag", { "fg": s:blue })
call Highlight("xmlTagName", { "fg": s:blue })
call Highlight("csContextualStatement", { "fg": s:blue })
call Highlight("csStringFormat", { "fg": s:blue })

" Light blue
call Highlight("typescriptObjectLabel", { "fg": s:lightBlue })
call Highlight("typescriptObjectLabel", { "fg": s:lightBlue })
call Highlight("typescriptBOMWindowProp", { "fg": s:lightBlue })
call Highlight("typescriptDOMFormProp", { "fg": s:lightBlue })
call Highlight("typescriptCall", { "fg": s:lightBlue })
call Highlight("typescriptVariableDeclaration", { "fg": s:lightBlue })
call Highlight("typescriptBlock", { "fg": s:lightBlue })
call Highlight("typescriptNodeGlobal", { "fg": s:lightBlue })
call Highlight("typescriptConditionalParen", { "fg": s:lightBlue })
call Highlight("typescriptIdentifierName", { "fg": s:lightBlue })
call Highlight("jsObjectKey", { "fg": s:lightBlue })

call Highlight("xmlAttrib", { "fg": s:lightBlue })

" Yellow
call Highlight("jsObjectKey", { "fg": s:yellow })
call Highlight("typescriptFuncName", { "fg": s:yellow })
call Highlight("typescriptStringMethod", { "fg": s:yellow })
call Highlight("typescriptMathStaticMethod", { "fg": s:yellow })
call Highlight("typescriptArrayMethod", { "fg": s:yellow })
call Highlight("typescriptES6SetMethod", { "fg": s:yellow })
call Highlight("typescriptObjectStaticMethod", { "fg": s:yellow })
call Highlight("typescriptBOMLocationMethod", { "fg": s:yellow })
call Highlight("typescriptJSONStaticMethod", { "fg": s:yellow })
call Highlight("typescriptGlobalMethod", { "fg": s:yellow })

call Highlight("csCodeAction", { "fg": s:yellow })

" Member yellow
call Highlight("typescriptDecorator", { "fg": s:memberYellow })
call Highlight("typescriptMember", { "fg": s:memberYellow })
call Highlight("typescriptBOMNavigatorProp", { "fg": s:memberYellow })

call Highlight("jsObjectFuncName", { "fg": s:memberYellow })

" Purple
call Highlight("typescriptRepeat", { "fg": s:purple })
call Highlight("typescriptStatementKeyword", { "fg": s:purple })
call Highlight("typescriptExport", { "fg": s:purple })
call Highlight("typescriptDefault", { "fg": s:purple })
call Highlight("typescriptArrowFuncArg", { "fg": s:purple })
call Highlight("typescriptCastKeyword", { "fg": s:purple })

" Interfaces yellow
call Highlight("csUserInterface", { "fg": s:interfaceYellow })
call Highlight("csIface", { "fg": s:interfaceYellow })

" Gray
call Highlight("xmlTag", { "fg": s:gray })
call Highlight("vueSurroundingTag", { "fg": s:gray })
