" Register eslint as a fixer for :ALEFix
let g:ale_fixers = {
\   'vim': ['trim_whitespace'],
\   'cucumber': ['trim_whitespace'],
\   'javascript': ['prettier', 'eslint', 'trim_whitespace'],
\   'typescript': ['prettier', 'tslint', 'trim_whitespace'],
\   'handlebars': ['trim_whitespace'],
\   'elm': ['elm-format', 'trim_whitespace']
\}

" fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" do not lint on the fly, only on save
let g:ale_lint_on_text_changed = 'never'

" Enable completion where available.
let g:ale_completion_enabled = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
