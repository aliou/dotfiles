#!/usr/bin/env bash

ln -Fis ~/.dotfiles/bash/bashrc ~/.bashrc
ln -Fis ~/.dotfiles/bash/inputrc ~/.inputrc
ln -Fis ~/.dotfiles/bash/profile ~/.profile
ln -Fis ~/.dotfiles/tcsh/tcshrc ~/.tcshrc

ln -Fis ~/.dotfiles/git/gitignore ~/.gitignore
ln -Fis ~/.dotfiles/git/gitconfig ~/.gitconfig

ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

ln -Fis ~/.dotfiles/ack/ackrc ~/.ackrc

ln -Fis ~/.dotfiles/irssi ~/.irssi

mkdir -p ~/.dotfiles/work.local
echo -e "#!/usr/bin/env bash\n" >> ~/.dotfiles/work.local/config.sh
