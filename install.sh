#!/usr/bin/env bash

ln -Fis ~/.dotfiles/bash/bashrc ~/.bashrc
ln -Fis ~/.dotfiles/bash/inputrc ~/.inputrc
ln -Fis ~/.dotfiles/bash/profile ~/.profile
ln -Fis ~/.dotfiles/tcsh/tcshrc ~/.tcshrc

ln -Fis ~/.dotfiles/git/gitignore ~/.gitignore
ln -Fis ~/.dotfiles/git/gitconfig ~/.gitconfig

ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

ln -Fis ~/.dotfiles/ack/ackrc ~/.ackrc
ln -Fis ~/.dotfiles/code/postgres/psqlrc ~/.psqlrc

ln -Fis ~/.dotfiles/irssi ~/.irssi

mkdir -p ~/.dotfiles/zfiles.local
echo -e "#!/usr/bin/env bash\n" >> ~/.dotfiles/zfiles.local/config.sh

touch ~/.dotfiles/zfiles.local/gitconfig
ln -Fis ~/.dotfiles/zfiles.local/gitconfig ~/.gitconfig.local

touch ~/.dotfiles/zfiles.local/bashrc
ln -Fis ~/.dotfiles/zfiles.local/bashrc ~/.bashrc.local

echo 'What remains to be done:'
echo '- Generate SSH key and add it to GitHub.'
echo '- Generate GPG key and add it to GitHub.'
echo '- Setup the `signingkey` for Git.'
