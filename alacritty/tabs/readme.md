Configuration and scripts to add tab support to Alacritty using tmux.

# How it works
To handle tabs, we use tmux sessions with different settings as regular tmux sessions.

### Alacritty
In the [Alacritty confiuration file](../config.yml), we configure the `shell` key (i.e. the command to run when starting Alacritty) to run `tmux` with custom options:
- We pass the custom configuration file,
- We use another Socket name (`alacritty`) to differentiate from other tmux sessions.
This allows opening a new instance with the key binding <kbd>⌘</kbd> + <kbd>N</kbd>.

We also configure some key bindings:
- <kbd>⌘</kbd> + <kbd>T</kbd>: Pretend to open a new tab by creating a new `tmux` window.
- <kbd>Ctrl</kbd> + <kbd>Tab</kbd>: Send escape sequences to move to the next window.
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd>: Send escape sequences to move to the previous window.

### tmux
In the [tmux configuration file](./tmux-tabs.conf):
- We configure the status bar to be displayed on top and represent a tab bar
- We override other options to not clash with binding of other tmux sessions.

### Shell
If we detect we're in Alacritty and in its tmux session for tabs, we unset the `TMUX` environment variable, allowing the creation of other tmux session inside the Alacritty tmux session.

## Issue and future improvements
- [x] ~Currently, using <kbd>Ctrl</kbd> + <kbd>Tab</kbd> and <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> to cycle through tabs is not working.~
- [ ] Each Alacritty instance as its own tmux session, we need to add a way to simply differentiate them (through the session name perhaps?)
- [ ] Improve tab bar appearance so that it works with both light and dark themes.
