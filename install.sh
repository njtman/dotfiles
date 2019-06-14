#!/usr/bin/env bash

set -e

dotfiles=$(pwd)
cd ~
echo "Changed directory to home"

ln -s "$dotfiles/.vim" .config/nvim
ln -s "$dotfiles/.zshrc" .zshrc

echo "linking completed"
cd $dotfiles

