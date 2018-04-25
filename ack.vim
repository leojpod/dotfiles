" use ag (the silver searcher) if possible
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
