#!/bin/sh

ln -Fs ~/.dotfiles/bash/bashrc ~/.bashrc
ln -Fs ~/.dotfiles/bash/inputrc ~/.inputrc
ln -Fs ~/.dotfiles/bash/profile ~/.profile
ln -Fs ~/.dotfiles/tcsh/tcshrc ~/.tcshrc

ln -Fs ~/.dotfiles/git/gitignore ~/.gitignore
ln -Fs ~/.dotfiles/git/gitconfig ~/.gitconfig


ln -Fs ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

touch ~/.secrets
echo "Remeber to edit the `~/.secrets` file."
