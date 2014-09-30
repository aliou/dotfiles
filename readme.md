My dotfiles are inspired by @holman's and like his are organized into topics
(bash, git, tmux, etc). Make sure to check is blog post [Dotfiles Are Meant to
Be Forked][holman-post] and his [dotfiles][holman-dotfiles].

## Install

Make sure to backup your config files, because this will nuke 'em.

```sh
git clone https://github.com/aliou/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh install.sh
```

## Vim

My Vim configuration has its [own repo][vim].

## Secrets

Put in the file `~/.secrets` the environment variables you want to set but not
commit or that are different depending on your environment:

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

[vim]: https://github.com/aliou/dotvim
[holman-post]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
[holman-dotfiles]: https://github.com/holman/dotfiles
