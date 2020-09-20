" Reset all syntax
syntax clear

runtime! syntax/html.vim

" Start and end
syntax region aspCode keepend start=+^\s*@+ end=+$+ contains=csKeyword,csString,csCharacter,Comment
syntax region aspCode keepend start=+@{+ end=+}+ contains=csKeyword,csString,csCharacter,Comment

syntax keyword csKeyword if null attribute namespace page inherits

" String
syntax region csString start=+\z(["]\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+ contains=@spell
syntax match csCharacter /'.{1}'/

" Comment
syntax region Comment start=/@\*/ end=/\*@/ contained
