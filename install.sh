#!/bin/sh

ln -s ~/.dotfiles/bash/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash/inputrc ~/.inputrc
ln -s ~/.dotfiles/bash/profile ~/.profile

ln -s ~/.dotfiles/git/gitignore ~/.gitignore
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig

ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

ln -s ~/.dotfiles/system/pentadactylrc ~/.pentadactylrc

touch ~/.secret
