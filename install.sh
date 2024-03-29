#!/bin/bash

####################
# TERMINAL TOOLING #
####################

## TODO check if we're on a mac or not
# zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install neovim (yep)
brew install neovim

# install tmux
brew install tmux

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install elm completions
mkdir -p ~/.bash
git clone https://github.com/dmy/elm-sh-completion.git ~/.bash/elm-sh-completion

# install pinentry
brew install pinentry

# install bat
brew install bat

# make sure we can sign with gpg
export GPG_TTY=$(tty)

# thefuck
brew install thefuck

# install the search stuff
brew install ripgrep

# install asdf-vm
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.7
# install stuff for asdf
brew install \
  coreutils automake autoconf openssl \
  libyaml readline libxslt libtool unixodbc \
  unzip curl

# install npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# install kitty 
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin \
  launch=n


# install rustup
curl https://sh.rustup.rs -sSf | sh

# setup rust stuff for zsh
rustup completions zsh > ~/.zfunc/_rustup

# haskell stack
curl -sSL https://get.haskellstack.org/ | sh

# install elixir
brew install elixir
# install hex for elixir
mix local.hex
# and phoenix while we're at it
mix archive.install hex phx_new

##################
# setup for nvim #
##################

# make sure python 3 is installed
brew install python
pip3 install neovim

# make sure deoplete packages are installed

# install bibtex and arara

# install neovim stuff for ruby and node
gem install neovim
gem install environment
npm i -g neovim

# setup nvim directly
nvim +PlugInstall +UpdateRemotePlugins +qa


# at last run the setup to make sure all configs are linked properly
./setup.sh
