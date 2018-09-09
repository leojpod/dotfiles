
" " Helper function (from https://blog.jez.io/haskell-development-with-neovim/)
" " To do either an hindent, a stylish or both:
" function! HaskellFormat(which) abort
  " if a:which ==# 'hindent' || a:which ==# 'both'
    " :Hindent
  " endif
  " if a:which ==# 'stylish' || a:which ==# 'both'
    " silent! exe 'undojoin'
    " silent! exe 'keepjumps %!stylish-haskell'
  " endif
" endfunction

"autocmd FileType haskell
augroup haskell
  autocmd!
  autocmd BufNewFile,BufRead *.hs set tabstop=8 softtabstop=4
    \ shiftwidth=4 textwidth=80 expandtab autoindent shiftround
    \ fileformat=unix
augroup END

" keybindings for haskell files
augroup haskellStylish
  autocmd!
  " autocmd FileType haskell nnoremap <leader>hi :Hindent<CR>
  " autocmd FileType haskell nnoremap <leader>hs :call HaskellFormat('stylish')<CR>
  " autocmd FileType haskell nnoremap <leader>hr :call HaskellFormat('both')<CR>
  autocmd FileType haskell nnoremap <leader>= :Tabularize /=<CR>
  autocmd FileType haskell nnoremap <leader>- :Tabularize /-><CR>
  autocmd FileType haskell nnoremap <leader>i :HsimportSymbol<CR>
  autocmd FileType haskell nnoremap <leader>m :HsimportModule<CR>
augroup END
