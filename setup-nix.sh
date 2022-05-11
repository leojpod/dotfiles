#!/bin/bash

CURRENT_DIR=`pwd -P`

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# LINK CONFIGURATIONS
echo LINKING CONFIGURATIONS...

rm -fr $HOME/.zshrc
ln -s $CURRENT_DIR/zshrc-nix $HOME/.zshrc

rm -fr $HOME/.scripts
ln -s $CURRENT_DIR/scripts $HOME/.scripts

rm -fr $HOME/.secrets.sh
ln -s $CURRENT_DIR/secrets.sh $HOME/.secrets.sh

rm -fr $XDG_CONFIG_HOME/kitty
ln -s $CURRENT_DIR/kitty $XDG_CONFIG_HOME/kitty

rm -fr $XDG_CONFIG_HOME/nvim
ln -s $CURRENT_DIR/nvim-config $XDG_CONFIG_HOME/nvim

rm -fr $HOME/.gitconfig
ln -s $CURRENT_DIR/gitconfig $HOME/.gitconfig
rm -fr $HOME/.git-templates
ln -s $CURRENT_DIR/git/git-templates $HOME/.git-templates

rm -fr $HOME/.tool-versions
ln -s $CURRENT_DIR/tool-versions $HOME/.tool-versions

rm -fr $HOME/.oh-my-zsh/custom/themes
ln -s $CURRENT_DIR/oh-my-zsh-custom-themes $HOME/.oh-my-zsh/custom/themes

echo CONFIGURATIONS LINKED.
