#!/usr/bin/env bash

ln -Fis ~/.dotfiles/bash/bashrc ~/.bashrc
ln -Fis ~/.dotfiles/bash/inputrc ~/.inputrc
ln -Fis ~/.dotfiles/bash/profile ~/.profile
ln -Fis ~/.dotfiles/tcsh/tcshrc ~/.tcshrc

mkdir -p ~/.config/git
ln -Fis ~/.dotfiles/git/gitignore ~/.config/git/ignore
ln -Fis ~/.dotfiles/git/gitconfig ~/.config/git/config

ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

ln -Fis ~/.dotfiles/ack/ackrc ~/.ackrc
ln -Fis ~/.dotfiles/code/postgres/psqlrc ~/.psqlrc
ln -Fis ~/.dotfiles/code/redis/redisclirc ~/.redisclirc

ln -Fis ~/.dotfiles/irssi ~/.irssi

mkdir -p ~/.dotfiles/zfiles.local
echo -e '#!/usr/bin/env bash\n' >> ~/.dotfiles/zfiles.local/config.sh

touch ~/.dotfiles/zfiles.local/gitconfig
ln -Fis ~/.dotfiles/zfiles.local/gitconfig ~/.config/git/config.local

touch ~/.dotfiles/zfiles.local/bashrc
ln -Fis ~/.dotfiles/zfiles.local/bashrc ~/.bashrc.local

ln -Fis ~/.dotfiles/alacritty/config.yml ~/.config/alacritty/alacritty.yml
ln -Fis ~/.dotfiles/yamllint/config.yml ~/.config/yamllint/config
ln -Fis ~/.dotfiles/code/ruby/pryrc ~/.pryrc
