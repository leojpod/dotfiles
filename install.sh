#!/bin/bash

####################
# TERMINAL TOOLING #
####################

## TODO check if we're on a mac or not
# zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

## TODO check if we're on a mac or not
# thefuck
brew install thefuck


## TODO check if we're on a mac or not
# install the search stuff
brew install ripgrep

# install asdf-vm
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.7
# install stuff for asdf
brew install \
  coreutils automake autoconf openssl \
  libyaml readline libxslt libtool unixodbc \
  unzip curl



# install rustup
curl https://sh.rustup.rs -sSf | sh

# setup rust stuff for zsh
rustup completions zsh > ~/.zfunc/_rustup

# haskell stack
curl -sSL https://get.haskellstack.org/ | sh


##################
# setup for nvim #
##################

# make sure python 3 is installed
## TODO check if we're on a mac or not
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
