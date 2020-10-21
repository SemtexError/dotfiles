syn match   htmlArg "[@#v:a-z][-:.0-9_a-z]*\>" contained

" Prevent 0 lenght vue dynamic attributes from (:id="") from overflowing from
" the area described by two quotes ("" or '') this works because syntax
" defined earlier in the file have priority.
syn match htmlString /\(\([@#:]\|v-\)[-:.0-9_a-z\[\]]*=\)\@<=""/ containedin=ALLBUT,htmlComment
syn match htmlString /\(\([@#:]\|v-\)[-:.0-9_a-z\[\]]*=\)\@<=''/ containedin=ALLBUT,htmlComment

" Actually provide the JavaScript syntax highlighting.

" for mustaches quotes (`{{` and `}}`)
syn region vueJavascriptInTemplate matchgroup=htmlSpecialChar start=/{{/ keepend end=/}}/ contains=@jsAll containedin=ALLBUT,htmlComment
" for double quotes (") and for single quotes (')
" It's necessary to have both because we can't start a region with double
" quotes and it with a single quote, and removing `keepend` would result in
" side effects.
syn region vueJavascriptInTemplate start=/\(\([@#:]\|v-\)\([-:.0-9_a-z]*\|\[.*\]\)=\)\@<="/ms=e+1 keepend end=/"/me=s-1 contains=@jsAll containedin=ALLBUT,htmlComment
syn region vueJavascriptInTemplate start=/\(\([@#:]\|v-\)\([-:.0-9_a-z]*\|\[.*\]\)=\)\@<='/ms=e+1 keepend end=/'/me=s-1 contains=@jsAll containedin=ALLBUT,htmlComment
" This one is for #[thisHere] @[thisHereToo] :[thisHereAlso]
syn region vueJavascriptInTemplate matchgroup=htmlArg start=/[@#:]\[/ keepend end=/\]/ contains=@jsAll containedin=ALLBUT,htmlComment
