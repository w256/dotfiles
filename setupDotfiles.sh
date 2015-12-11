#!/bin/sh
mkdir -p ~/dotfiles/local/undo
mkdir -p ~/dotfiles/local/view
ln -si ~/dotfiles/.zshrc ~/.zshrc
ln -si ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/.bash_profile ~/.bash_profile
touch ~/dotfiles/local/.zshrc.local
touch ~/dotfiles/local/.zshrc.local.alias
touch ~/dotfiles/local/.zshrc.local.function
touch ~/dotfiles/local/.bash.local.alias
mkdir -p ~/dotfiles/local/bundle
git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/local/bundle/neobundle.vim
echo "dotfiles setup completed."
