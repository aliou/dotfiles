all: install-bin \
	install-bash \
	install-readline \
	install-git \
	install-tmux \
	install-ack \
	install-psql \
	install-redis \
	install-alacritty \
	install-kitty \
	install-yamllint \
	install-pry \
	install-local

install-bin:
	mkdir -p ~/code/bin
	ln -Fis ~/.dotfiles/code/docker/scripts/* ~/code/bin/
	ln -Fis ~/.dotfiles/bin/* ~/code/bin/

install-theme-change:
	ln -Fis ~/.dotfiles/apple/scripts/update_theme ~/code/bin
	ln -Fis ~/.dotfiles/apple/scripts/notify-theme-change /usr/local/bin
	ln -Fis ~/.dotfiles/apple/scripts/me.aliou.notify-theme-change.plist ~/Library/LaunchAgents

install-bash:
	ln -Fis ~/.dotfiles/bash/profile ~/.profile
	ln -Fis ~/.dotfiles/bash/bashrc ~/.bashrc

install-readline:
	ln -Fis ~/.dotfiles/readline/inputrc ~/.inputrc

install-git:
	mkdir -p ~/.config/git
	ln -Fis ~/.dotfiles/git/gitignore ~/.config/git/ignore
	ln -Fis ~/.dotfiles/git/gitattributes ~/.config/git/attributes
	ln -Fis ~/.dotfiles/git/gitconfig ~/.config/git/config
	cp ~/.dotfiles/git/gitconfig.local.sample ~/.config/git/config.local

install-tmux:
	mkdir -p ~/.config/tmux
	ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
	touch ~/.config/tmux/local.conf

install-ack:
	ln -Fis ~/.dotfiles/ack/ackrc ~/.ackrc

install-psql:
	ln -Fis ~/.dotfiles/code/postgres/psqlrc ~/.psqlrc
	mkdir -p ~/.config/psql/aliases
	cp ~/.dotfiles/code/postgres/psqlrc.local.sample.sql ~/.config/psql/local.sql

install-redis:
	ln -Fis ~/.dotfiles/code/redis/redisclirc ~/.redisclirc

install-kitty:
	ln -Fis ~/.dotfiles/kitty ~/.config/kitty

install-alacritty:
	ln -Fis ~/.dotfiles/alacritty/config.yml ~/.config/alacritty/alacritty.yml
	cp ~/.dotfiles/alacritty/local.sample.yml ~/.config/alacritty/local.yml

install-yamllint:
	ln -Fis ~/.dotfiles/yamllint/config.yml ~/.config/yamllint/config

install-pry:
	ln -Fis ~/.dotfiles/code/ruby/pryrc ~/.pryrc

install-local:
	mkdir -p ~/.dotfiles/zfiles.local
	touch ~/.dotfiles/zfiles.local/config.sh
	touch ~/.dotfiles/zfiles.local/bashrc
	ln -Fis ~/.dotfiles/zfiles.local/bashrc ~/.bashrc.local
