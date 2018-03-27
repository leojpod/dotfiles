"NERD Tree commands
"open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"close vim if NERDTree is the only window left open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

