syn region  pugJavascriptString start=+"+  skip=+\\\("\|$\)+  end=+"\|$+ contained
syn region  pugJavascriptString start=+'+  skip=+\\\('\|$\)+  end=+'\|$+ contained
" NOTE: my patch for template strings
syn region  pugJavascriptString start=+`+  skip=+\\\(`\|$\)+  end=+`\|$+ contained
syn region pugJavascriptLine start=/^\s*-/ end=/$/ contains=@htmlJavascript

"NOTE: HTML tags
syn keyword pugTag contained a abbr acronym address applet article aside audio b basefont bdi bdo big blockquote body button canvas caption center cite code colgroup data datalist dd del details dfn dialog dir div dl dt em fieldset figcaption figure font footer form frame frameset h1 to h6 head header hgroup html i iframe ins kbd label legend li link main map mark menu menuitem meter nav noframes noscript object ol optgroup option output p p pre progress q rp rt ruby s samp script section select small source span strike strong style sub summary sup table tbody td textarea tfoot th thead time title tr track tt u ul var video wbr
syn region pugTag start=+^\s*+ end=+$+ contains=pugTag

"NOTE: Attributes
syn region pugAttributes start=+(+ end=+)+ contains=pugAttribute
syn match pugAttribute /\w\+\(=\|:\)\@=/

"NOTE: Comments
syn region pugComment start=+\/\/+ end=+$+
syn region pugBlockComment start=+\/\*+ end=+\*\/+

"NOTE: Class & ID Structures
syn match pugClass /\.\w\+/
syn match pugId /#\w\+/

"NOTE: Interpolation
syn region pugInterpolation start=+#{+ end=+}+ contained

"NOTE: Doctype
syn match pugDoctype /^doctype\s\+/

"NOTE: Pipes for Text
syn match pugPipe /^\s*|/

"NOTE: Control Statements
syn keyword pugControlStatement contained if else each while

"NOTE: Linking
hi def link pugTag Type
hi def link pugAttributes Identifier
hi def link pugAttribute String
hi def link pugComment Comment
hi def link pugBlockComment Comment
hi def link pugClass Statement
hi def link pugId Statement
hi def link pugInterpolation Special
hi def link pugDoctype PreProc
hi def link pugPipe Constant
hi def link pugControlStatement Keyword

