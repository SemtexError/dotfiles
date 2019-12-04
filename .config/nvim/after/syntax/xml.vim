syn include @aspCode syntax/aspvbs.vim

syntax region aspCode start=+<!\[CDATA\[+ end=+]]>+ keepend contains=@aspCode,aspStart,aspEnd,aspComment

" Doesn't apply for some reason
syntax region aspComment start=+//+ end=/$/ contained

" Delimiter
syntax match aspStart +<!\[CDATA\[+ contained
syntax match aspEnd +]]>+ contained
