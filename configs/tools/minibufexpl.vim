map <Leader>e :MBEOpen<cr>:MBEFocus<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>:MBEFocus<cr>

" custom settings for MBE

" put the mini buffer on the right of the screen
let g:miniBufExplBRSplit = 1
let g:miniBufExplVSplit = 15

" prevent auto opening of minibufexpl
let g:miniBufExplorerAutoStart = 0
