autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif

let g:startify_lists = [
      \ { 'type': 'dir', 'header': ['  MRU'. getcwd()]},
      \ { 'type': 'sessions', 'header': [' Sessions']},
      \ { 'type': 'bookmarks', 'header': ['  Bookmarks']},
      \ { 'type': 'commands', 'header': [' Commands']}
      \ ]
