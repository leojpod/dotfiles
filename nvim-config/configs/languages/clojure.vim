" Automatically determine indenting using fuzzy matching. e.g. the a line starting "(with-"
" will be indented two spaces.
let vimclojure#FuzzyIndent=1

" Highlight built-in functions from clojure.core and friends
let vimclojure#HighlightBuiltins=1

" Highlight functions from contrib
let vimclojure#HighlightContrib=1

" As new symbols are identified using VimClojure's dynamic features, automatically
" highlight them.
let vimclojure#DynamicHighlighting=1

" Color parens so they're easier to match visually
let vimclojure#ParenRainbow=1

" " Yes, I want nailgun support
" let vimclojure#WantNailgun = 1

" Full path to the nailgun client
let vimclojure#NailgunClient = "$HOME/.local/bin/ng"
