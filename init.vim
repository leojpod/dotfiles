" ~/.local/share/nvim/site/autoload/plug.vim
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) " Auto install Plug if it's not there
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set mouse=a

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" IDE style and general tools
Plug 'scrooloose/nerdtree' " Fancy file Tree on the side
Plug 'Xuyuanp/nerdtree-git-plugin' " Show Git's status of files in the file tree
Plug 'vim-airline/vim-airline' " Fancy status line at the bottom
Plug 'ctrlpvim/ctrlp.vim' " Fancy file finder via <C+P>
Plug 'ryanoasis/vim-devicons' " Fancy 'icons' everywhere in the editor
Plug 'Shougo/denite.nvim' " Black magic asynchronous support for nvim
Plug 'lifepillar/vim-solarized8' " Color Theme
Plug 'tpope/vim-unimpaired' " general set of options
Plug 'fholgado/minibufexpl.vim' " quickly see and close buffers
Plug 'christoomey/vim-tmux-navigator' " tmux integration (works with byobu if tmux is the engine used there
Plug 'jszakmeister/vim-togglecursor' " supposedy allow to change the shape of the cursor in vim, doesn't work on Kitty within byobu ...
Plug 'mileszs/ack.vim' " Quick search with Ack or Ag, I used far instead often ...
Plug 'dkprice/vim-easygrep' " search and replace option that I should use more often
Plug 'brooth/far.vim' " Find and Replace, does more or less the same as vim-easygrep, I should really keep only one of them ...
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder support
Plug 'junegunn/fzf.vim' " fuzzy finder with more options (built on top of fzf)
Plug 'reedes/vim-pencil'       " Super powered writing things
Plug 'reedes/vim-lexical'      " Lexicographical errors
Plug 'reedes/vim-litecorrect'  " Better autocorrections
Plug 'godlygeek/tabular'       " Crate tables

" general coding things:
Plug 'w0rp/ale' " Linter and Fixer
if has('nvim')
  Plug 'Shougo/deoplete.nvim' " Auto-complete
endif
Plug 'airblade/vim-gitgutter' " Git diff next to the line number
Plug 'tpope/vim-fugitive' " Git support
Plug 'nathanaelkane/vim-indent-guides' " Indent guidelines
Plug 'editorconfig/editorconfig-vim' " Support for .editorconfig
Plug 'jiangmiao/auto-pairs' " what is says on the tin
Plug 'scrooloose/nerdcommenter' " Simple stuff to (un)comment lines and block quickly
Plug 'terryma/vim-multiple-cursors' " quickly refactor within a file, or other multiple-cursors usefulness
Plug 'asturtz2/vim-insert-char', { 'branch': 'append-char' } " quicker way to add a single char without jumping in the insert mode and export
Plug 'nikvdp/ejs-syntax' " Don't remember why this one is there
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Language specific stuff

"" - JavaScript:
Plug 'Quramy/vim-js-pretty-template'
Plug 'isruslan/vim-es6'

"" - TypeScript :
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-tss', { 'for': [ 'typescript' ], 'do': 'npm install' }

"" - Ember:
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mustache/vim-mustache-handlebars'

"" - Vue.js:
Plug 'posva/vim-vue'

"" - Angular:
" Plug 'magarcia/vim-angular2-snippets' " Just kidding

"" - Elm:
Plug 'ElmCast/elm-vim'
if has('nvim')
  Plug 'pbogut/deoplete-elm'
endif

"" - Haskell:
Plug 'neovimhaskell/haskell-vim'
Plug 'nbouscal/vim-stylish-haskell', { 'do': 'stack install stylish-haskell' }
Plug 'dan-t/vim-hsimport'

"" - Rust:
Plug 'rust-lang/rust.vim', {'do': 'rustup component add rustfmt-preview --toolchain nightly'}
Plug 'racer-rust/vim-racer', {'do': 'cargo +nightly install racer'}

"" - Cucumber files:
Plug 'tpope/vim-cucumber'

"" - Latex:
Plug 'vim-latex/vim-latex'


"" - Markdown:
Plug 'Alok/notational-fzf-vim'
Plug 'reedes/vim-pencil'       " Super powered writing things
Plug 'junegunn/limelight.vim'  " Highlights only active paragraph
Plug 'reedes/vim-lexical'      " Lexicographical errors
Plug 'reedes/vim-litecorrect'  " Better autocorrections
Plug 'junegunn/goyo.vim'       " Spacing
Plug 'godlygeek/tabular'       " Crate tables
Plug 'plasticboy/vim-markdown' " Markdown

"" - Rest:
Plug 'diepm/vim-rest-console'



call plug#end()

" solarized theme config
set t_Co=256
colorscheme solarized8_flat

"" General configuration section

syntax on
set number
set ruler
filetype plugin on

set encoding=utf-8


"show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Automatically reload change files on disk
set autoread

" easier way to escape
" This is the best thing in my config IMO
imap jk <Esc>
imap kj <Esc>

" Use // to search for the visually selected text
vnoremap // y/\V<c-R>"<CR>

" Unselect text after search
nnoremap <Esc> :noh <CR>

" highlight trailing whitespace in red so it stands out, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" IDE style and general tools
source ~/.config/nvim/configs/tools/ctrlp.vim
if !(has("gui_running") || has("gui_vimr"))
  source ~/.config/nvim/configs/tools/nerdtree.vim
  highlight Normal ctermbg=NONE
  highlight nonText ctermbg=NONE
elseif has("gui_running")
  source ~/.config/nvim/configs/tools/gui.vim
endif


" general coding things:
source ~/.config/nvim/configs/tools/ale.vim
source ~/.config/nvim/configs/tools/deoplete.vim
source ~/.config/nvim/configs/tools/nerdcommenter.vim
source ~/.config/nvim/configs/tools/multiple-cursors.vim
source ~/.config/nvim/configs/tools/minibufexpl.vim
source ~/.config/nvim/configs/tools/ack.vim

" Language specific stuff

"" - JavaScript:

"" - TypeScript :
source ~/.config/nvim/configs/languages/typescript.vim

"" - Ember:
source ~/.config/nvim/configs/languages/handlebars.vim

"" - Vue.js:
autocmd FileType vue syntax sync fromstart

"" - Elm:
source ~/.config/nvim/configs/languages/elm.vim

"" - Haskell
source ~/.config/nvim/configs/languages/haskell.vim

"" - Rust:
source ~/.config/nvim/configs/languages/rust.vim

"" - Latex:
source ~/.config/nvim/configs/languages/latex.vim

"" - Markdown:
source ~/.config/nvim/configs/languages/notational.vim

"" - Rest:
source ~/.config/nvim/configs/languages/rest-console.vim

