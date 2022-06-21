#!/bin/bash

# Remove existing config files to make way for new
rm -r ~/.gitconfig
rm -r ~/.gitignore_global
rm -rf ~/.config/starship.toml
rm -f ~/.tmux.conf
rm -rf ~/.vim
rm -f ~/.vimrc
rm -f ~/.zshrc
rm -f ~/.zshrc.pre-oh-my-zsh
rm -rf ~/.tmp

# Symlink new config files
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/starship/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
mkdir ~/.tmp
