function! Highlight(group, highlight)
    execute "highlight" a:group
                \ "guifg="   (has_key(a:highlight, "fg")        ? a:highlight.fg        : "NONE")
                \ "guibg="   (has_key(a:highlight, "bg")        ? a:highlight.bg        : "NONE")
                \ "guisp="   (has_key(a:highlight, "sp")        ? a:highlight.sp        : "NONE")
                \ "gui="     (has_key(a:highlight, "gui")       ? a:highlight.gui       : "NONE")
                \ "ctermbg=" (has_key(a:highlight, "ctermbg")   ? a:highlight.ctermbg   : "NONE")
                \ "ctermfg=" (has_key(a:highlight, "ctermfg")   ? a:highlight.ctermfg   : "NONE")
endfunction

" ==============================

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="light-plus"

" Color
" Black - White
let s:black = "#eeeeee" " Black: 21, 21, 21
let s:lightBlack = "#dddddd" " Light black: 34, 34, 34
let s:darkGray = "#c3c3c3" " Gray: 60, 60, 60
let s:gray = "#afafaf" " Gray: 80, 80, 80
let s:lightGray = "#7f7f7f" " Light gray: 128, 128, 128
let s:silver = "#444444" " Silver: 187, 187, 187
let s:white = "#2b2b2b" " Broken white: 212, 212, 212

" Blue
let s:darkBlue = "#264F78" " Dark blue: 38, 79, 120
let s:blue = "#0000FF" " Blue: 86, 156, 214
let s:lightBlue = "#001080" " Light blue: 156, 220, 254

" Green
let s:teal = "#267F99" " Blue green: 78, 201, 176
let s:green = "#008000" " Green: 96, 139, 78
let s:lightGreen = "#098658" " Light green: 179, 209, 158

" Yellow
let s:yellow = "#795E26" " Yellow: 220, 220, 170

" Red - Orange
let s:red = "#E74C3C" " Red: 231, 76, 60
let s:redOrange = "#A31515" " Red orange: 206, 148, 120
let s:lightOrange = "#D7BA7D" " Orange: 215, 186, 125
let s:orange = "#F39C12" " Orange: 243, 156, 18

" Purple
let s:purple = "#AF00DB" " Purple: 196, 134, 192

" Groups
let s:transparant = {  }
let s:background = { "bg": s:black, "fg": s:white } " Default colors
let s:split = { "bg": s:black, "fg": s:darkGray } " Vim window split
let s:popup = { "bg": s:lightBlack, "fg": s:silver } " Auto complete popup
let s:focus = { "bg": s:gray } " Focused background: popup, search
let s:cursor = { "bg": s:lightBlack, "fg": "NONE" } " Cursor line
let s:searchCurrent = { "bg": s:lightGray } " Current searched item
let s:selection = { "bg": s:darkBlue } " Visual selection
let s:tailingWhitespace = { "bg": s:lightBlack } " Color tailing white space on lines with content

let s:danger = { "fg": s:red, "bg": "NONE" } " Error
let s:warning = { "fg": s:yellow, "bg": "NONE" } " Warning
let s:lineNumber = { "fg": s:gray } " line numbers
let s:lineNumberFocus = { "fg": s:silver } " Current line number

let s:statuslineNormal = { "bg": s:lightBlack, "fg": s:white } 
let s:statuslineInsert = { "bg": s:lightGray, "fg": s:white }
let s:statuslineVisual = { "bg": s:darkBlue, "fg": s:white }
let s:statuslineReplace = { "bg": s:red, "fg": s:white }
let s:statuslineError = { "bg": s:red, "fg": s:white }
let s:statuslineWarning = { "bg": s:orange, "fg": s:white }

let s:debugger = { "bg": s:orange, "fg": s:black } " Debugger
let s:tag = { "fg": s:lightGray } " XML/HTML tags
let s:statement = { "fg": s:purple } " An unknown statement
let s:comment = { "fg": s:green } " Text comment
let s:type = { "fg": s:blue } " Variable type
let s:constant = { "fg": s:blue } " Variable constant value
let s:identifier = { "fg": s:lightBlue } " Variable identifiers
let s:function = { "fg": s:yellow } " Functions/methods
let s:string = { "fg": s:redOrange } " String literals
let s:interface = { "fg": s:lightGreen } " Interface members
let s:pseudoCass = { "fg": s:lightOrange } " CSS pseudo classes
let s:class = { "fg": s:teal } " Classes

" === Doesn't work otherwise for some reason, can't be bothered to fix that ATM of writing this
highlight SpellBad gui=underline term=underline guisp=#E74C3C

" === Vim ===
call Highlight("Normal", s:background)
call Highlight("VertSplit", s:split)
call Highlight("Directory", s:type)
call Highlight("NonText", s:type)
call Highlight("error", s:danger)
call Highlight("ErrorMsg", s:danger)
call Highlight("Todo", s:warning)
call Highlight("SignColumn", s:transparant) 
call Highlight("IncSearch", s:searchCurrent)
call Highlight("Search", s:focus)
call Highlight("Visual", s:selection)
call Highlight("Question", s:comment)

" === Vim cursor ===
call Highlight("ColorColumn", s:cursor)
call Highlight("Folded", s:cursor)
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
call Highlight("Title", s:transparant)
call Highlight("Special", s:transparant)
call Highlight("String", s:string)
call Highlight("Comment", s:comment)
call Highlight("Type", s:type)
call Highlight("Statement", s:statement)
call Highlight("Identifier", s:identifier)
call Highlight("Function", s:function)
call Highlight("constant", s:constant)
call Highlight("Operator", s:transparant)
" === Vim tabline ===
call Highlight("Statusline", s:statuslineNormal)
call Highlight("TabLine", s:statuslineNormal)
call Highlight("TabLineSelected", s:background)

call Highlight("StatusModeNormalColor", s:statuslineNormal)
call Highlight("StatusModeInsertColor", s:statuslineInsert)
call Highlight("StatusModeVisualColor", s:statuslineVisual)
call Highlight("StatusModeCommandColor", s:statuslineVisual)
call Highlight("StatusModeReplaceColor", s:statuslineReplace)
call Highlight("StatusErrorColor", s:statuslineError)
call Highlight("StatusWarningColor", s:statuslineWarning)

" === C ===
call Highlight("cOperator", s:type)

" === Java ===
call Highlight("javaAccessKeyword", s:type)
call Highlight("javaType", s:class)

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
call Highlight("csKeyword", s:type)

" Interfaces
call Highlight("csUserInterface", s:interface)
call Highlight("csIface", s:interface)
call Highlight("csGeneric", s:interface)
call Highlight("csNumber", s:interface)

call Highlight("csUserIdentifier", s:identifier)

" fucntions
call Highlight("csCodeAction", s:function)

call Highlight("csUserIdentifier", s:identifier)

" String
call Highlight("csCharacter", s:string)

" == Javascript ==

" Types
call Highlight("fromImport", s:type)
call Highlight("jsAsyncKeyword", s:type)
call Highlight("jsImport", s:type)
call Highlight("jsOperatorKeyword", s:type)
call Highlight("jsClassKeyword", s:type)
call Highlight("jsThis", s:type)

" Identifiers
call Highlight("jsObjectKey", s:identifier)
call Highlight("jsFuncArgs", s:identifier)
call Highlight("jsVariableDef", s:identifier)
call Highlight("jsDestructuringBlock", s:identifier)
call Highlight("jsObjectProp", s:identifier)

" Functions
call Highlight("jsObjectKey", s:function)
call Highlight("jsClassProperty", s:function)
call Highlight("jsClassFuncName", s:function)
call Highlight("jsFuncCall", s:function)
call Highlight("jsFunctionKey", s:function)

" Interfaces
call Highlight("jsObjectFuncName", s:interface)
call Highlight("jsNumber", s:interface)
call Highlight("jsFloat", s:interface)

" Class
call Highlight("jsClassDefinition", s:class)
call Highlight("jsClassBlock", s:class)
call Highlight("jsGlobalObjects", s:class)
call Highlight("jsClassInitalize", s:class) " Custom

" String
call Highlight("jsRegexpString", s:string)

" Statement
call Highlight("jsExportDefault", s:statement)

" Todo
call Highlight("jsCommentTodo", s:statuslineNormal)

" === Typescript ===
" Types
call Highlight("typescriptAmbientDeclaration", s:type)
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
call Highlight("typescriptAbstract", s:type)
call Highlight("typescriptObjectLiteral", s:type)

" Identifiers
call Highlight("typescriptObjectLabel", s:identifier)
call Highlight("typescriptObjectLabel", s:identifier)
call Highlight("typescriptBOMWindowProp", s:identifier)
call Highlight("typescriptDOMFormProp", s:identifier)
call Highlight("typescriptDOMDocProp", s:identifier)
call Highlight("typescriptCall", s:identifier)
call Highlight("typescriptVariableDeclaration", s:identifier)
call Highlight("typescriptBlock", s:identifier)
call Highlight("typescriptNodeGlobal", s:identifier)
call Highlight("typescriptConditionalParen", s:identifier)
call Highlight("typescriptIdentifierName", s:identifier)
call Highlight("typescriptFuncCallArg", s:identifier)

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
call Highlight("typescriptBOMNavigatorProp", s:interface)
call Highlight("typescriptNumber", s:interface)
call Highlight("typescriptDecorator", s:interface)

" Statements
call Highlight("typescriptRepeat", s:statement)
call Highlight("typescriptStatementKeyword", s:statement)
call Highlight("typescriptExport", s:statement)
call Highlight("typescriptDefault", s:statement)
call Highlight("typescriptArrowFuncArg", s:statement)
call Highlight("typescriptCastKeyword", s:statement)

" Classes
call Highlight("typescriptBOM", s:class)
call Highlight("typescriptClassDefinition", s:class) " Custom
call Highlight("typescriptClassName", s:class)
call Highlight("typescriptClassHeritage", s:class)
call Highlight("typescriptGlobal", s:class)
call Highlight("typescriptPredefinedType", s:class)
call Highlight("typescriptTypeReference", s:class)
call Highlight("typescriptEnum", s:class)

" === HTML/XML ===
" Tags
call Highlight("htmlTag", s:tag)
call Highlight("htmlEndTag", s:tag)
call Highlight("xmlTag", s:tag)
call Highlight("xmlProcessingDelim", s:tag)

" Types
call Highlight("htmlSpecialTagName", s:type)
call Highlight("htmlTagName", s:type)
call Highlight("htmlTagN", s:type)
call Highlight("xmlTagName", s:type)
call Highlight("xmlDecl", s:type)
call Highlight("svgElement", s:type)

" Identifiers
call Highlight("htmlArg", s:identifier)
call Highlight("xmlAttrib", s:identifier)
call Highlight("svgAttr", s:identifier)
call Highlight("xmlDeclAttr", s:identifier)

" Comment
call Highlight("htmlComment", s:comment)

" === CSS/SCSS/SASS/LESS ===
call Highlight("scssAttribute", s:type)

" Identifiers
call Highlight("cssProp", s:identifier)
call Highlight("scssProperty", s:identifier)
call Highlight("cssVendor", s:identifier)
call Highlight("cssAttributeSelector", s:identifier)
call Highlight("cssCustomProp", s:identifier)
call Highlight("scssParameterList", s:identifier)

" Strings
call Highlight("cssAttr", s:string)

" Pseudo classes
call Highlight("cssPseudoClass", s:pseudoCass)
call Highlight("cssPseudoClassId", s:pseudoCass)
call Highlight("cssPseudoClassLang", s:pseudoCass)
call Highlight("cssTagName", s:pseudoCass)
call Highlight("cssClassName", s:pseudoCass)
call Highlight("cssIdentifier", s:pseudoCass)
call Highlight("scssSelectorName", s:pseudoCass)

" Interfaces
call Highlight("cssValueLength", s:interface)
call Highlight("cssUnitDecorators", s:interface)
call Highlight("cssColor", s:interface)
call Highlight("cssValueNumber", s:interface)

" Statements
call Highlight("PreProc", s:statement)

" Functions
call Highlight("cssFunction", s:function)
call Highlight("scssFunctionName", s:function)
" === SQL ===
call Highlight("sqlStatement", s:type)
call Highlight("sqlKeyword", s:type)
call Highlight("sqlSpecial", s:type)

call Highlight("sqlModifier", s:statement)

call Highlight("Quote", s:string)

call Highlight("sqlAsIdentifier", s:identifier)
call Highlight("sqlVariable", s:identifier)

" === ASP classic ===
call Highlight("aspDebugger", s:debugger)

call Highlight("aspStart", s:type)
call Highlight("aspEnd", s:type)
call Highlight("aspStorageClass", s:type)
call Highlight("aspConstant", s:type)
call Highlight("aspNaN", s:type)
call Highlight("aspBoolean", s:type)
call Highlight("aspNull", s:type)
call Highlight("aspDecleration", s:type)
call Highlight("aspFunction", s:type)
call Highlight("aspType", s:type)

call Highlight("aspComment", s:comment)
call Highlight("aspMultilineComment", s:comment)

call Highlight("aspVariableDef", s:identifier)
call Highlight("aspObjectProp", s:identifier)

call Highlight("aspFuncCall", s:function)

call Highlight("aspString", s:string)

call Highlight("aspGlobalObjects", s:class)
call Highlight("aspClassDefinition", s:class)

call Highlight("aspConditional", s:statement)

call Highlight("aspNumber", s:interface)

call Highlight("aspTailingWhitespace", s:tailingWhitespace)

" === Rust ===
call Highlight("rustSelf", s:statement)

call Highlight("rustKeyword", s:type)
call Highlight("rustOperator", s:type)
call Highlight("rustOperator", s:type)

call Highlight("rustModPathSep", s:identifier)

call Highlight("rustAttributeParenthesizedParens", s:type)

call Highlight("rustMacro", s:function)

call Highlight("rustEnum", s:class)
call Highlight("rustEnumVariant", s:class)
call Highlight("rustModPath", s:class)
call Highlight("rustIdentifier", s:class)
call Highlight("rustDeriveTrait", s:class)
call Highlight("rustUserType", s:class)

call Highlight("rustCommentLineDoc", s:comment)
call Highlight("rustCharacter", s:string)

call Highlight("rustDecNumber", s:interface)
call Highlight("rustFloat", s:interface)

" === Json ===
" Interface
call Highlight("jsonNumber", s:interface)

" String
call Highlight("jsonKeyword", s:identifier)

" Type
call Highlight("jsonNull", s:type)
call Highlight("jsonKeyword", s:identifier)

" === Vue ===
" Tags
call Highlight("vueSurroundingTag", s:tag)

" === Markdown ===
call Highlight("mkdBlockquote", s:identifier)

" == MatchUp ==
call Highlight("MatchParen", s:tailingWhitespace)

" == Razor ==
call Highlight("rUsing", s:type)
call Highlight("rModel", s:statement)
call Highlight("razorStart", s:type)
call Highlight("rNamespace", s:class)

" == LaTeX ==
call Highlight("texStatement", s:type)
call Highlight("texSection", s:type)
call Highlight("texTypeStyle", s:type)
call Highlight("texMathZoneX", s:class)
call Highlight("texBeginEndName", s:identifier)
call Highlight("texDocTypeArgs", s:identifier)
call Highlight("texLength", s:interface)
call Highlight("texRefZone", s:class)
call Highlight("texZone", s:identifier)

" == Bib ==
call Highlight("bibQuote", s:string)
call Highlight("bibType", s:type)
call Highlight("bibKey", s:interface)
call Highlight("bibBrace", s:identifier)
call Highlight("bibEntryKw", s:identifier)
call Highlight("texCite", s:identifier)

