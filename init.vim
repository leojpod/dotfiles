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
Plug 'diepm/vim-rest-console'

call plug#end()


"" General configuration section

syntax on
set number
set ruler
filetype plugin indent on

set encoding=utf-8

"show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Unselect text after search
nnoremap <Esc> :noh <CR>

source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/typescript-vim.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/deoplete.vim

