#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

brew install neovim

dotfiles=$(pwd)
cd ~
echo "Changed directory to home"

mkdir -p .config/
ln -s "$dotfiles/.vim" .config/nvim
ln -s "$dotfiles/.zshrc" .zshrc
ln -s "$dotfiles" .

echo "linking completed"
cd $dotfiles

