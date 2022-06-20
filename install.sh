#!/bin/bash

# Remove existing config files to make way for new
rm -f ~/.tmux.conf
rm -f ~/.vimrc
rm -f ~/.zshrc.pre-oh-my-zsh
rm -rf ~/.config/starship.toml
rm -rf ~/.tmp
rm -rf ~/.tmuxinator
rm -rf ~/.vim
rm -f ~/.zshrc

# Symlink new config files
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmuxinator ~/.tmuxinator
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
mkdir ~/.tmp
