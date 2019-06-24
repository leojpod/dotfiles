" use tab and shift-tab to navigate the completion list
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)<Paste>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

