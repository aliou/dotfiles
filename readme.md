## Install

```sh
git clone https://github.com/aliou/dotfiles.git ~/.dotfiles

# BACKUP UR SHIT and run
cd ~/.dotfiles
sh install.sh

```

## Secrets

Put in the file `~/.secrets` the environment variables you want to set but not
commit or that are different depending on the environment:

```sh
# Set your git user info
export GIT_AUTHOR_NAME='Desmond Hume'
export GIT_AUTHOR_EMAIL='desmond.hume@orchid.is'
export GIT_COMMITTER_NAME='Desmond Hume'
export GIT_COMMITTER_EMAIL='desmond.hume@orchid.is'

# For `hub` or `gist`.
export GITHUB_USER='desmond'
export GITHUB_TOKEN='4-8-15-16-23-42'
```
