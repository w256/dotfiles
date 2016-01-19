#!/bin/sh
mkdir -p ~/dotfiles/local/undo
mkdir -p ~/dotfiles/local/view
ln -si ~/dotfiles/.zshrc ~/.zshrc
ln -si ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/.bash_profile ~/.bash_profile
ln -si ~/dotfiles/.tmux ~/.tmux.conf
touch ~/dotfiles/local/.zshrc.local
touch ~/dotfiles/local/.zshrc.local.alias
touch ~/dotfiles/local/.zshrc.local.function
touch ~/dotfiles/local/.zshrc.local.env
touch ~/dotfiles/local/.bash_profile.local
touch ~/dotfiles/local/.bash_profile.local.alias
mkdir -p ~/dotfiles/local/bundle
git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/local/bundle/neobundle.vim
echo "dotfiles setup completed."
exit 0
