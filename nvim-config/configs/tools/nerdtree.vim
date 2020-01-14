"NERD Tree commands
"open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open NERDTree only if no files are specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" add binding for toggling the NERDTree
map <C-a> :NERDTreeToggle<CR>

