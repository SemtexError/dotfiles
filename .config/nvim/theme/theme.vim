source ~/.config/nvim/theme/methods.vim

" Color
let s:bg = "#1E1E1E"
let s:color = "#D4D4D4"

let s:gray = "#808080"
let s:darkestGray = "#222222"
let s:darkGray = "#3C3C3C"
let s:lightGray = "#51504F"
let s:silver = "#BBBBBB"

let s:blue = "#569CD6"
let s:darkBlue = "#264F78"
let s:lightBlue = "#9CDCFE"
let s:veryDarkBlue = "#2D2D30"

let s:green = "#4EC9B0"
let s:hippieGreen = "#608B4E"
let s:rainee = "#B3D19F"

let s:yellow = "#DCDCAA"
let s:gold = "#D7BA7D"

let s:red = "#F44747"

let s:orange = "#CE9178"

let s:purple = "#C586C0"

" Groups
let s:none = {  } " Empty object
let s:default = { "fg": s:color } " Default colors
let s:background = { "bg": s:bg, "fg": s:color }
let s:statusline = { "bg": s:darkGray }
let s:split = { "bg": s:bg, "fg": s:lightGray }
let s:tag = { "fg": s:gray }
let s:popup = { "bg": s:veryDarkBlue, "fg": s:silver }
let s:focus = { "bg": s:lightGray }
let s:danger = { "fg": s:red, "bg": "NONE" }
let s:warning = { "fg": s:yellow, "bg": "NONE" }
let s:cursor = { "bg": s:darkestGray, "fg": "NONE" }
let s:lineNumber = { "fg": s:lightGray }
let s:lineNumberFocus = { "fg": s:silver }

let s:searchCurrent = { "bg": s:gray }
let s:selection = { "bg": s:darkBlue }

let s:statement = { "fg": s:purple } " An unknown statement
let s:comment = { "fg": s:hippieGreen } " Text comment
let s:type = { "fg": s:blue } " Variable type
let s:constant = { "fg": s:blue } " Variable constant value
let s:identifier = { "fg": s:lightBlue } " Variable identifiers
let s:function = { "fg": s:yellow } " Functions/methods
let s:string = { "fg": s:orange } " String literals
let s:interface = { "fg": s:rainee } " Interface members
let s:pseudoCass = { "fg": s:gold }
let s:class = { "fg": s:green } " Classes

" === Vim ===
    call Highlight("Normal", s:background)
    call Highlight("VertSplit", s:split)
    call Highlight("Directory", s:type)
    call Highlight("error", s:danger)
    call Highlight("ErrorMsg", s:danger)
    call Highlight("Todo", s:warning)
    call Highlight("SignColumn", s:none) 
    call Highlight("IncSearch", s:searchCurrent)
    call Highlight("Search", s:focus)
    call Highlight("Visual", s:selection)
    call Highlight("Question", s:comment)

" === Vim cursor ===
    call Highlight("ColorColumn", s:cursor)
    call Highlight("CursorLine", s:cursor)
    call Highlight("CursorColumn", s:cursor)
    call Highlight("LineNr", s:lineNumber)
    call Highlight("EndOfBuffer", s:lineNumber) 
    call Highlight("CursorLineNr", s:lineNumberFocus)

" == Vim Popup ===
    call Highlight("Pmenu", s:popup)
    call Highlight("PmenuSel", s:focus)

" === Vim script ===
    call Highlight("VimUserFunc", s:function)
    call Highlight("vimCommand", s:type)

" === Code defaults ===
    call Highlight("Title", {  })
    call Highlight("Special", s:default)
    call Highlight("String", s:string)
    call Highlight("Comment", s:comment)
    call Highlight("Type", s:type)
    call Highlight("Statement", s:statement)
    call Highlight("Identifier", s:identifier)
    call Highlight("Function", s:function)
    call Highlight("constant", s:constant)
    call Highlight("Operator", s:default)

" === Vim tabline ===
    call Highlight("Statusline", s:statusline)
    call Highlight("TabLine", s:statusline)
    call Highlight("TabLineSelected", s:background)

    call Highlight("StatusModeNormalColor", { "bg": s:darkGray, "fg": "#ecf0f1" })
    call Highlight("StatusModeInsertColor", { "bg": "#95a5a6", "fg": "#2C3E50" })
    call Highlight("StatusModeVisualColor", { "bg": s:darkBlue, "fg": "#ecf0f1" })
    call Highlight("StatusModeCommandColor", { "bg": "#2980b9", "fg": "#ecf0f1" })
    call Highlight("StatusModeReplaceColor", { "bg": "#E74C3C", "fg": "#ecf0f1" })
    call Highlight("StatusErrorColor", { "bg": "#E74C3C", "fg": "#ecf0f1" })
    call Highlight("StatusWarningColor", { "bg": "#F39C12", "fg": "#ecf0f1" })

" === C# ===
    " Classes
    call Highlight("csClassType", s:class)
    call Highlight("csUserType", s:class)
    call Highlight("csAttribute", s:class)

    " Types
    call Highlight("csClass", s:type)
    call Highlight("csClass", s:type)
    call Highlight("csNew", s:type)
    call Highlight("csNewType", s:type)
    call Highlight("csAsync", s:type)
    call Highlight("csXmlTag", s:type)
    call Highlight("csContextualStatement", s:type)
    call Highlight("csStringFormat", s:type)

    " Interfaces
    call Highlight("csUserInterface", s:interface)
    call Highlight("csIface", s:interface)
    call Highlight("csGeneric", s:interface)

    " fucntions
    call Highlight("csCodeAction", s:function)

" == Javascript ==
    " syntax match jsClassInitalize /(?<=new).*(?=\()/
    syntax match jsClassInitalize /\(new\)\@<=.*\((\)\@=/

    call Highlight("jsClassInitalize", { "bg": s:red })

    " Types
    call Highlight("fromImport", s:type)
    call Highlight("jsAsyncKeyword", s:type)
    call Highlight("jsImport", s:type)
    call Highlight("jsOperatorKeyword", s:type)
    call Highlight("jsClassKeyword", s:type)

    " Identifiers
    call Highlight("jsObjectKey", s:identifier)
    call Highlight("jsFuncArgs", s:identifier)
    call Highlight("jsVariableDef", s:identifier)
    call Highlight("jsDestructuringBlock", s:identifier)

    " Functions
    call Highlight("jsObjectKey", s:function)
    call Highlight("jsClassProperty", s:function)
    call Highlight("jsClassFuncName", s:function)
    call Highlight("jsFuncCall", s:function)
    call Highlight("jsFunctionKey", s:function)

    " Interfaces
    call Highlight("jsObjectFuncName", s:interface)
    call Highlight("jsNumber", s:interface)

    " Class
    call Highlight("jsClassDefinition", s:class)
    call Highlight("jsClassBlock", s:class)
    call Highlight("jsGlobalObjects", s:class)

    " String
    call Highlight("jsRegexpString", s:string)

    " Statement
    call Highlight("jsExportDefault", s:statement)

" === Typescript ===
    " Types
    call Highlight("typescriptClassKeyword", s:type)
    call Highlight("typescriptClassExtends", s:type)
    call Highlight("typescriptImport", s:type)
    call Highlight("typescriptOperator", s:type)
    call Highlight("typescriptOperator", s:type)
    call Highlight("typescriptFuncKeyword", s:type)
    call Highlight("typescriptVariable", s:type)
    call Highlight("typescriptAccessibilityModifier", s:type)
    call Highlight("typescriptTry", s:type)
    call Highlight("typescriptAsyncFuncKeyword", s:type)
    call Highlight("typescriptExceptions", s:type)
    call Highlight("typescriptMethodAccessor", s:type)
    call Highlight("typescriptEnumKeyword", s:type)

    " Identifiers
    call Highlight("typescriptObjectLabel", s:identifier)
    call Highlight("typescriptObjectLabel", s:identifier)
    call Highlight("typescriptBOMWindowProp", s:identifier)
    call Highlight("typescriptDOMFormProp", s:identifier)
    call Highlight("typescriptCall", s:identifier)
    call Highlight("typescriptVariableDeclaration", s:identifier)
    call Highlight("typescriptBlock", s:identifier)
    call Highlight("typescriptNodeGlobal", s:identifier)
    call Highlight("typescriptConditionalParen", s:identifier)
    call Highlight("typescriptIdentifierName", s:identifier)

    " Functions
    call Highlight("typescriptFuncName", s:function)
    call Highlight("typescriptStringMethod", s:function)
    call Highlight("typescriptMathStaticMethod", s:function)
    call Highlight("typescriptArrayMethod", s:function)
    call Highlight("typescriptES6SetMethod", s:function)
    call Highlight("typescriptObjectStaticMethod", s:function)
    call Highlight("typescriptBOMLocationMethod", s:function)
    call Highlight("typescriptJSONStaticMethod", s:function)
    call Highlight("typescriptGlobalMethod", s:function)
    call Highlight("typescriptMember", s:function)
    call Highlight("typescriptConsoleMethod", s:function)

    " Interfaces
    call Highlight("typescriptDecorator", s:interface)
    call Highlight("typescriptBOMNavigatorProp", s:interface)
    call Highlight("typescriptNumber", s:interface)

    " Statements
    call Highlight("typescriptRepeat", s:statement)
    call Highlight("typescriptStatementKeyword", s:statement)
    call Highlight("typescriptExport", s:statement)
    call Highlight("typescriptDefault", s:statement)
    call Highlight("typescriptArrowFuncArg", s:statement)
    call Highlight("typescriptCastKeyword", s:statement)

    " Classes
    call Highlight("typescriptBOM", s:class)
    call Highlight("typescriptClassName", s:class)
    call Highlight("typescriptClassHeritage", s:class)
    call Highlight("typescriptGlobal", s:class)
    call Highlight("typescriptPredefinedType", s:class)
    call Highlight("typescriptTypeReference", s:class)
    call Highlight("typescriptEnum", s:class)
    call Highlight("typescriptFuncCallArg", s:class)

" === HTML/XML ===
    " Tags
    call Highlight("htmlTag", s:tag)
    call Highlight("htmlEndTag", s:tag)
    call Highlight("xmlTag", s:tag)

    " Types
    call Highlight("htmlSpecialTagName", s:type)
    call Highlight("htmlTagName", s:type)
    call Highlight("xmlTagName", s:type)

    " Identifiers
    call Highlight("htmlArg", s:identifier)
    call Highlight("xmlAttrib", s:identifier)

" === CSS/SCSS/SASS/LESS ===
    call Highlight("scssAttribute", s:default)

    " Identifiers
    call Highlight("cssProp", s:identifier)
    call Highlight("scssProperty", s:identifier)
    call Highlight("cssVendor", s:identifier)

    " Strings
    call Highlight("cssAttr", s:string)

    " Interfaces
    call Highlight("cssPseudoClass", s:pseudoCass)
    call Highlight("cssPseudoClassId", s:pseudoCass)
    call Highlight("cssPseudoClassLang", s:pseudoCass)
    call Highlight("cssTagName", s:pseudoCass)

    call Highlight("cssValueLength", s:interface)
    call Highlight("cssUnitDecorators", s:interface)

    " Statements
    call Highlight("PreProc", s:statement)

    " Functions
    call Highlight("cssFunction", s:function)
    call Highlight("scssFunctionName", s:function)


" === Vue ===
    " Tags
    call Highlight("vueSurroundingTag", s:tag)

" == MatchUp ==
    call Highlight("MatchParen", s:focus)

