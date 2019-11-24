let s:group_colors = {}
function! s:h(group, style, ...)
  if (a:0 > 0)
    let s:highlight = s:group_colors[a:group]
    for style_type in ["fg", "bg", "sp"]
      if (has_key(a:style, style_type))
        let l:default_style = (has_key(s:highlight, style_type) ? s:highlight[style_type] : { "cterm16": "NONE", "cterm": "NONE", "gui": "NONE" })
        let s:highlight[style_type] = extend(l:default_style, a:style[style_type])
      endif
    endfor
    if (has_key(a:style, "gui"))
      let s:highlight.gui = a:style.gui
    endif
  else
    let s:highlight = a:style
    let s:group_colors[a:group] = s:highlight
  endif

  execute "highlight" a:group
    \ "guifg="   (has_key(s:highlight, "fg")    ? s:highlight.fg : "NONE")
    \ "guibg="   (has_key(s:highlight, "bg")    ? s:highlight.bg   : "NONE")
    \ "guisp="   (has_key(s:highlight, "sp")    ? s:highlight.sp   : "NONE")
    \ "gui="     (has_key(s:highlight, "gui")   ? s:highlight      : "NONE")
    \ "cterm="   (has_key(s:highlight, "cterm") ? s:highlight.cterm    : "NONE")
endfunction

let s:gray = "#808080"
let s:green = "#4EC9B0"
let s:blue = "#569CD6"
let s:lightBlue = "#9CDCFE"
let s:yellow = "#DCDCAA"
let s:memberYellow = "#D7BA7D"
let s:interfaceYellow = "#B3D19F"
let s:purple = "#C586C0"

" Green
call s:h("typescriptBOM", { "fg": s:green })
call s:h("typescriptClassName", { "fg": s:green })
call s:h("typescriptClassHeritage", { "fg": s:green })
call s:h("typescriptGlobal", { "fg": s:green })
call s:h("typescriptPredefinedType", { "fg": s:green })
call s:h("typescriptTypeReference", { "fg": s:green })
call s:h("typescriptEnum", { "fg": s:green })
call s:h("typescriptFuncCallArg", { "fg": s:green })

call s:h("csClassType", { "fg": s:green })
call s:h("csUserType", { "fg": s:green })
call s:h("csAttribute", { "fg": s:green })

" Blue
call s:h("vimCommand", { "fg": s:blue })

call s:h("typescriptClassKeyword", { "fg": s:blue })
call s:h("typescriptClassExtends", { "fg": s:blue })
call s:h("typescriptImport", { "fg": s:blue })
call s:h("typescriptOperator", { "fg": s:blue })
call s:h("typescriptOperator", { "fg": s:blue })
call s:h("typescriptFuncKeyword", { "fg": s:blue })
call s:h("typescriptVariable", { "fg": s:blue })
call s:h("typescriptAccessibilityModifier", { "fg": s:blue })
call s:h("typescriptTry", { "fg": s:blue })
call s:h("typescriptAsyncFuncKeyword", { "fg": s:blue })
call s:h("typescriptExceptions", { "fg": s:blue })
call s:h("typescriptMethodAccessor", { "fg": s:blue })
call s:h("typescriptEnumKeyword", { "fg": s:blue })
call s:h("jsAsyncKeyword", { "fg": s:blue })
call s:h("jsImport", { "fg": s:blue })
call s:h("fromImport", { "fg": s:blue })
call s:h("jsOperatorKeyword", { "fg": s:blue })

call s:h("csClass", { "fg": s:blue })
call s:h("csClass", { "fg": s:blue })
call s:h("csNew", { "fg": s:blue })
call s:h("csNewType", { "fg": s:blue })
call s:h("csAsync", { "fg": s:blue })
call s:h("csXmlTag", { "fg": s:blue })
call s:h("xmlTagName", { "fg": s:blue })
call s:h("csContextualStatement", { "fg": s:blue })
call s:h("csStringFormat", { "fg": s:blue })

" Light blue
call s:h("typescriptObjectLabel", { "fg": s:lightBlue })
call s:h("typescriptObjectLabel", { "fg": s:lightBlue })
call s:h("typescriptBOMWindowProp", { "fg": s:lightBlue })
call s:h("typescriptDOMFormProp", { "fg": s:lightBlue })
call s:h("typescriptCall", { "fg": s:lightBlue })
call s:h("typescriptVariableDeclaration", { "fg": s:lightBlue })
call s:h("typescriptBlock", { "fg": s:lightBlue })
call s:h("typescriptNodeGlobal", { "fg": s:lightBlue })
call s:h("typescriptConditionalParen", { "fg": s:lightBlue })
call s:h("typescriptIdentifierName", { "fg": s:lightBlue })
call s:h("jsObjectKey", { "fg": s:lightBlue })

call s:h("xmlAttrib", { "fg": s:lightBlue })

" Yellow
call s:h("jsObjectKey", { "fg": s:yellow })
call s:h("typescriptFuncName", { "fg": s:yellow })
call s:h("typescriptStringMethod", { "fg": s:yellow })
call s:h("typescriptMathStaticMethod", { "fg": s:yellow })
call s:h("typescriptArrayMethod", { "fg": s:yellow })
call s:h("typescriptES6SetMethod", { "fg": s:yellow })
call s:h("typescriptObjectStaticMethod", { "fg": s:yellow })
call s:h("typescriptBOMLocationMethod", { "fg": s:yellow })
call s:h("typescriptJSONStaticMethod", { "fg": s:yellow })
call s:h("typescriptGlobalMethod", { "fg": s:yellow })

call s:h("csCodeAction", { "fg": s:yellow })

" Member yellow
call s:h("typescriptDecorator", { "fg": s:memberYellow })
call s:h("typescriptMember", { "fg": s:memberYellow })
call s:h("typescriptBOMNavigatorProp", { "fg": s:memberYellow })

call s:h("jsObjectFuncName", { "fg": s:memberYellow })

" Purple
call s:h("typescriptRepeat", { "fg": s:purple })
call s:h("typescriptStatementKeyword", { "fg": s:purple })
call s:h("typescriptExport", { "fg": s:purple })
call s:h("typescriptDefault", { "fg": s:purple })
call s:h("typescriptArrowFuncArg", { "fg": s:purple })
call s:h("typescriptCastKeyword", { "fg": s:purple })

" Interfaces yellow
call s:h("csUserInterface", { "fg": s:interfaceYellow })
call s:h("csIface", { "fg": s:interfaceYellow })

" Gray
call s:h("xmlTag", { "fg": s:gray })
call s:h("vueSurroundingTag", { "fg": s:gray })

