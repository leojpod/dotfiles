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
Plug 'jszakmeister/vim-togglecursor' " supposedy allow to change the shape of the cursor in vim, doesn't work on Kitty within byobu ...
Plug 'mileszs/ack.vim' " Quick search with Ack or Ag, I used far instead often ...
Plug 'dkprice/vim-easygrep' " search and replace option that I should use more often
Plug 'brooth/far.vim' " Find and Replace, does more or less the same as vim-easygrep, I should really keep only one of them ...
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder support
Plug 'junegunn/fzf.vim' " fuzzy finder with more options (built on top of fzf)
Plug 'christoomey/vim-tmux-navigator' " tmux integration (works with byobu if tmux is the engine used there
Plug 'Shougo/vimproc.vim', {'do': 'make'} " apparently still required for some plugins ...
Plug 'mhinz/vim-startify' " a fancy startup screen
Plug 'alfredodeza/posero.vim' " a stuff to write presentation
Plug 'tpope/vim-dispatch'

" general coding things
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter' " Git diff next to the line number
Plug 'tpope/vim-fugitive' " Git support
Plug 'jreybert/vimagit' " this provide the brilliant :Magic command, an absolute must have!
Plug 'nathanaelkane/vim-indent-guides' " Indent guidelines
Plug 'editorconfig/editorconfig-vim' " Support for .editorconfig
Plug 'jiangmiao/auto-pairs' " what is says on the tin
Plug 'scrooloose/nerdcommenter' " Simple stuff to (un)comment lines and block quickly
Plug 'terryma/vim-multiple-cursors' " quickly refactor within a file, or other multiple-cursors usefulness
Plug 'asturtz2/vim-insert-char', { 'branch': 'append-char' } " quicker way to add a single char without jumping in the insert mode and export
Plug 'junegunn/limelight.vim'
Plug 'ap/vim-css-color'
Plug 'severin-lemaignan/vim-minimap'
Plug 'AGhost-7/critiq.vim'

" shameless plug to my first plugin
Plug 'leojpod/gitstandup.vim'

" Language specific stuff

"" - JavaScript:
Plug 'Quramy/vim-js-pretty-template'
Plug 'isruslan/vim-es6'

"" - TypeScript :
Plug 'Quramy/tsuquyomi'
" Plug 'rudism/deoplete-tsuquyomi'
Plug 'leafgarland/typescript-vim'

"" - Ember:
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mustache/vim-mustache-handlebars'

"" - Vue.js:
Plug 'posva/vim-vue'

"" - Angular:
" Plug 'magarcia/vim-angular2-snippets' " Just kidding

" - GraphQl
Plug 'jparise/vim-graphql'

" - Elm:
Plug 'andys8/vim-elm-syntax', { 'for': ['elm'] }

"" - Haskell:
Plug 'neovimhaskell/haskell-vim'
" Plug 'alx741/vim-hindent'
Plug 'nbouscal/vim-stylish-haskell', { 'do': 'stack install stylish-haskell' }

"" - Rust:
Plug 'rust-lang/rust.vim', {'do': 'rustup component add rustfmt-preview '}
" Plug 'racer-rust/vim-racer', {'do': 'cargo +nightly install racer'}


"" - Cucumber files:
Plug 'tpope/vim-cucumber'

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

"" - PSQL:
Plug 'lifepillar/pgsql.vim'
Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'

"" - Prolog:
Plug 'adimit/prolog.vim'

"" - Latex:
Plug 'lervag/vimtex'

"" - openSCAD:
Plug 'vim-scripts/openscad.vim'

"" - NGINX
Plug 'chr4/nginx.vim'

"" - R
Plug 'jalvesaq/Nvim-R'
let R_in_buffer = 0
let R_assign = 0


call plug#end()

" solarized theme config
set t_Co=256
set background=light
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

" grab the esc key in terminal mode to go to normal
tnoremap <Esc> <C-\><C-n>

" general coding things:
source ~/.config/nvim/configs/tools/coc.vim
source ~/.config/nvim/configs/tools/nerdcommenter.vim
source ~/.config/nvim/configs/tools/multiple-cursors.vim
source ~/.config/nvim/configs/tools/minibufexpl.vim
source ~/.config/nvim/configs/tools/ack.vim
source ~/.config/nvim/configs/tools/indent-guides.vim
source ~/.config/nvim/configs/tools/startify.vim
source ~/.config/nvim/configs/tools/tmux-navigator.vim

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

"" - PSQL
source ~/.config/nvim/configs/languages/psql.vim

"" - Latex
source ~/.config/nvim/configs/languages/latex.vim

"" - Rust:
source ~/.config/nvim/configs/languages/rust.vim

"" - Markdown:
source ~/.config/nvim/configs/languages/notational.vim
source ~/.config/nvim/configs/languages/md.vim

"" - Rest:
source ~/.config/nvim/configs/languages/rest-console.vim

