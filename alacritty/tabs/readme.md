Configuration and scripts to add tab support to Alacritty using tmux.

# How it works
To handle tabs, we use tmux sessions with different settings as my regular tmux session.

### Alacritty
In the [Alacritty confiuration file](../config.yml), we configure the `shell` key (aka the command to run when starting Alacritty) to be tmux with custom options:
- We pass the custom configuration file,
- We use another Socket name (`alacritty`) to not separate from other tmux sessions.
This means that opening a new instance with the key binding <kbd>⌘</kbd> + <kbd>N</kbd>.

We also configure a key binding on <kbd>⌘</kbd> + <kbd>T</kbd> to behave like creating a new tab by opening a new window in the current Alacritty session.

### tmux
In the [tmux configuration file](./tmux-tabs.conf):
- We configure the status bar to be displayed on top and represent a tab bar
- We override other options to not clash with binding of other tmux sessions.

### Shell
If we detect we're in Alacritty and in its tmux session for tabs, we unset the `TMUX` environment variable, allowing the creation of other tmux session inside the Alacritty tmux session.

## Issue and future improvements
- [ ] Currently, using <kbd>Ctrl</kbd> + <kbd>Tab</kbd> and <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> to cycle through tabs is not working.
- [ ] Each Alacritty instance as its own tmux session, we need to add a way to simply differentiate them (through the session name perhaps?)
- [ ] Improve tab bar appearance so that it works with both light and dark themes.
