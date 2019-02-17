all: install-bash \
	install-readline \
	install-git \
	install-tmux \
	install-ack \
	install-psql \
	install-redis \
	install-alacritty \
	install-yamllint \
	install-pry \
	install-local

install-bash:
	ln -Fis ~/.dotfiles/bash/profile ~/.profile
	ln -Fis ~/.dotfiles/bash/bashrc ~/.bashrc

install-readline:
	ln -Fis ~/.dotfiles/readline/inputrc ~/.inputrc

install-git:
	mkdir -p ~/.config/git
	ln -Fis ~/.dotfiles/git/gitignore ~/.config/git/ignore
	ln -Fis ~/.dotfiles/git/gitconfig ~/.config/git/config

install-tmux:
	ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

install-ack:
	ln -Fis ~/.dotfiles/ack/ackrc ~/.ackrc

install-psql:
	ln -Fis ~/.dotfiles/code/postgres/psqlrc ~/.psqlrc

install-redis:
	ln -Fis ~/.dotfiles/code/redis/redisclirc ~/.redisclirc

install-alacritty:
	ln -Fis ~/.dotfiles/alacritty/config.yml ~/.config/alacritty/alacritty.yml

install-yamllint:
	ln -Fis ~/.dotfiles/yamllint/config.yml ~/.config/yamllint/config

install-pry:
	ln -Fis ~/.dotfiles/code/ruby/pryrc ~/.pryrc

install-local:
	mkdir -p ~/.dotfiles/zfiles.local
	touch ~/.dotfiles/zfiles.local/config.sh
	touch ~/.dotfiles/zfiles.local/gitconfig
	ln -Fis ~/.dotfiles/zfiles.local/gitconfig ~/.config/git/config.local
	touch ~/.dotfiles/zfiles.local/bashrc
	ln -Fis ~/.dotfiles/zfiles.local/bashrc ~/.bashrc.local
