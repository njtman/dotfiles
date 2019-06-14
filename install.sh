#!/usr/bin/env bash

set -e

brew install neovim

dotfiles=$(pwd)
cd ~
echo "Changed directory to home"

mkdir -p .config/
ln -s "$dotfiles/.vim" .config/nvim
ln -s "$dotfiles/.zshrc" .zshrc

echo "linking completed"
cd $dotfiles

