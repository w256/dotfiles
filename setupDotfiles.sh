#!/bin/sh
ln -si ~/dotfiles/.zshrc ~/.zshrc
ln -si ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/.bash_profile ~/.bash_profile
ln -sin ~/dotfiles/.vim/ ~/.vim
mkdir -p ~/dotfiles/local
mkdir -p ~/.vim/undo
touch ~/dotfiles/local/.zshrc.local
touch ~/dotfiles/local/.zshrc.local.alias
touch ~/dotfiles/local/.zshrc.local.function
touch ~/dotfiles/local/.bash.local.alias
echo "dotfiles setup conpleted."
