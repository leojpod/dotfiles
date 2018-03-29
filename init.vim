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
Plug 'shime/vim-livedown'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'magarcia/vim-angular2-snippets'
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-cucumber'

call plug#end()

" solarized theme config
set t_Co=256
colorscheme solarized8_flat

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

" remove trailing whitespace
" autocmd BufWritePre * %s/\s\+$//e

" Unselect text after search
nnoremap <Esc> :noh <CR>

" Use CMD+K N to go from pane to pane
nnoremap <c-k>n <c-w>w
nnoremap <c-k><c-n> <c-w>w

" highlight trailing whitespace in red so it stands out, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/typescript-vim.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/livedown.vim
source ~/.config/nvim/ale.vim
source ~/.config/nvim/elm.vim

" if has("gui_running")
"   source ~/.config/nvim/gui.vim
" endif
if !(has("gui_running") || has("gui_vimr"))
  source ~/.config/nvim/nerdtree.vim
  highlight Normal ctermbg=NONE
  highlight nonText ctermbg=NONE
endif
