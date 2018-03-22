set mouse=a

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
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
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/denite.nvim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'mustache/vim-mustache-handlebars'

call plug#end()
