#!/bin/sh
ln -si ~/dotfiles/.zshrc ~/.zshrc
ln -si ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/.bash_profile ~/.bash_profile
ln -sin ~/dotfiles/.vim/ ~/.vim
mkdir -p ~/dotfiles/local
touch ~/dotfiles/local/.zshrc.local
touch ~/dotfiles/local/.zshrc.local.alias
touch ~/dotfiles/local/.zshrc.local.function
echo "dotfiles setup conpleted."
