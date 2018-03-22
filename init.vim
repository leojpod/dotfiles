set mouse=a

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'leafgarland/typescript-vim'
Plug 'ElmCast/elm-vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim'
Plug 'Quramy/vim-js-pretty-template' 
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'isruslan/vim-es6'

call plug#end()
