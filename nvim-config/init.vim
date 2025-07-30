" ~/.local/share/nvim/site/autoload/plug.vim
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) " Auto install Plug if it's not there
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set mouse=a
set clipboard+=unnamedplus

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
Plug 'mileszs/ack.vim' " Quick search with Ack or Ag, I used far instead often ...
Plug 'dkprice/vim-easygrep' " search and replace option that I should use more often
Plug 'brooth/far.vim' " Find and Replace, does more or less the same as vim-easygrep, I should really keep only one of them ...
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} } " fuzzy finder support
Plug 'junegunn/fzf.vim' " fuzzy finder with more options (built on top of fzf)
Plug 'christoomey/vim-tmux-navigator' " tmux integration (works with byobu if tmux is the engine used there
Plug 'Shougo/vimproc.vim', {'do': 'make'} " apparently still required for some plugins ...
Plug 'mhinz/vim-startify' " a fancy startup screen
Plug 'alfredodeza/posero.vim' " a stuff to write presentation
Plug 'tpope/vim-dispatch'
Plug 'rhysd/vim-grammarous'

" general coding things
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter' " Git diff next to the line number
Plug 'APZelos/blamer.nvim' " super charged git explorer 
Plug 'tpope/vim-fugitive' " Git support
Plug 'jreybert/vimagit' " this provide the brilliant :Magic command, an absolute must have!
Plug 'whiteinge/diffconflicts'
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
Plug 'preservim/tagbar' " nice tag bar for the side
Plug 'vim-test/vim-test' " testing tool
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" shameless plug to my first plugin
Plug 'leojpod/gitstandup.vim'

" Gist stuff
Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist'

" Language specific stuff

"" - Lilypond
Plug 'martineausimon/nvim-lilypond-suite'
Plug 'MunifTanjim/nui.nvim'

"" - JavaScript:
Plug 'Quramy/vim-js-pretty-template'
Plug 'isruslan/vim-es6'

"" - TypeScript :
" Plug 'Quramy/tsuquyomi'
" Plug 'rudism/deoplete-tsuquyomi'
Plug 'leafgarland/typescript-vim'

"" - Ember:
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mustache/vim-mustache-handlebars'

"" - Elixir:
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

"" - Vue.js:
Plug 'posva/vim-vue'

"" - Angular:
" Plug 'magarcia/vim-angular2-snippets' " Just kidding

" - GraphQl
Plug 'jparise/vim-graphql'

" - Elm:
" Plug 'andys8/vim-elm-syntax', { 'for': ['elm'] }

"" - Haskell:
Plug 'neovimhaskell/haskell-vim'
" Plug 'alx741/vim-hindent'
Plug 'nbouscal/vim-stylish-haskell', { 'do': 'stack install stylish-haskell' }

"" - Rust:
Plug 'rust-lang/rust.vim', {'do': 'rustup component add rustfmt-preview '}
" Plug 'racer-rust/vim-racer', {'do': 'cargo +nightly install racer'}

"" - Unison web 
Plug 'unisonweb/unison', { 'branch': 'trunk', 'rtp': 'editor-support/vim' }

"" - Cucumber files:
Plug 'tpope/vim-cucumber'


"" - Clojure: 
" Plug 'guns/vim-sexp',    {'for': 'clojure'}
" Plug 'liquidz/vim-iced', {'for': 'clojure'}
" Plug 'liquidz/vim-iced-coc-source', {'for': 'clojure'}
" Plug 'vim-scripts/VimClojure'

"" - Racket
" Plug 'wlangstroth/vim-racket' " base thing for scheme and racket
" Plug 'kovisoft/slimv'

"" - Markdown:
Plug 'Alok/notational-fzf-vim'
Plug 'reedes/vim-pencil'       " Super powered writing things
Plug 'junegunn/limelight.vim'  " Highlights only active paragraph
Plug 'reedes/vim-lexical'      " Lexicographical errors
Plug 'reedes/vim-litecorrect'  " Better autocorrections
Plug 'junegunn/goyo.vim'       " Spacing
Plug 'godlygeek/tabular'       " Create tables
Plug 'plasticboy/vim-markdown' " Markdown
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " why not having a preview of the Markdown while editing it? 

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

"" - F# 
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

"" - Solidity 
Plug 'tomlion/vim-solidity'

"" - Nix stuff 
Plug 'LnL7/vim-nix'


call plug#end()

" solarized theme config
set t_Co=256
if $DAY_NIGHT ==# "NIGHT"
  set termguicolors
  set background=dark
  colorscheme solarized8
else
  set background=light
  colorscheme solarized8
endif

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

" use gT to open a new tab
noremap gT :tabnew <CR>
noremap gb :tabprevious <CR>

" super folding trick 
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" toggle tagbar
nmap <leader>b :TagbarToggle <CR>

" setup terminals quickly (Aka zsh ninja)
function! MyTerminalLayout() 
  tabnew
  terminal
  vsplit
  terminal
  split
  terminal
  vsplit
  terminal
endfunction

:command! -nargs=0 Terms call MyTerminalLayout()

" setup mini layout quickly
function! MyFewTerminalLayout() 
  tabnew
  terminal
  vsplit
  terminal
  split
  terminal
endfunction

:command! -nargs=0 FewTerms call MyFewTerminalLayout()

" general coding things:
source ~/.config/nvim/configs/tools/coc.vim
source ~/.config/nvim/configs/tools/nerdcommenter.vim
source ~/.config/nvim/configs/tools/multiple-cursors.vim
source ~/.config/nvim/configs/tools/ack.vim
source ~/.config/nvim/configs/tools/indent-guides.vim
source ~/.config/nvim/configs/tools/startify.vim
source ~/.config/nvim/configs/tools/test.vim
source ~/.config/nvim/configs/tools/tmux-navigator.vim

" Language specific stuff

"" - Lilypond 
source ~/.config/nvim/configs/languages/lilypond.vim

"" - JavaScript:

"" - TypeScript :
source ~/.config/nvim/configs/languages/typescript.vim

"" - Ember:
source ~/.config/nvim/configs/languages/handlebars.vim

"" - Elixir:
source ~/.config/nvim/configs/languages/elixir.vim

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

"" - clojure: 
source ~/.config/nvim/configs/languages/clojure.vim
