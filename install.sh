#!/usr/bin/env bash

dotfiles=$(pwd)
cd ~
echo "Changed directory to home"

ln -s "$dotfiles/.vim" .config/nvim
ln -s "$dotfiles/.zshrc" .zshrc

echo "linking completed"
cd $dotfiles

