A bunch of [Tmuxinator](https://github.com/tmuxinator/tmuxinator) templates.

#### Installation

```bash
gem install tmuxinator
mkdir -p ~/.tmuxinator/
ln -s ~/.dotfiles/tmux/templates/*.yml ~/.tmuxinator/
```

#### How to use

When setting a new project, copy the template using `tmuxinator copy <TEMPLATE> <PROJECT-NAME>`
and edit the `root` key to match your project path.
