let s:group_colors = {}

function! Highlight(group, style, ...)
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
        \ "guifg="   (has_key(s:highlight, "fg")    ? s:highlight.fg    : "NONE")
        \ "guibg="   (has_key(s:highlight, "bg")    ? s:highlight.bg    : "NONE")
        \ "guisp="   (has_key(s:highlight, "sp")    ? s:highlight.sp    : "NONE")
        \ "gui="     (has_key(s:highlight, "gui")   ? s:highlight       : "NONE")
        \ "cterm="   (has_key(s:highlight, "cterm") ? s:highlight.cterm : "NONE")
endfunction

