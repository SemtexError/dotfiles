syn include @aspCode syntax/aspvbs.vim

syntax region aspCode start=+<!\[CDATA\[+ end=+]]>+ keepend contains=@aspCode,aspStart,aspEnd

" Delimiter
syntax match aspStart +<!\[CDATA\[+ contained
syntax match aspEnd +]]>+ contained
