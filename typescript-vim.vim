" change the typescript compiler so it uses the .tsconfig file
autocmd FileType typescript :set makeprg=tsc

" show errors in quick fix
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
" use pretty template in template string within typescript 
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
autocmd FileType typescript nnoremap <silent> <buffer> gb :TernDef<CR>

" setup tsuquyomi
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 
