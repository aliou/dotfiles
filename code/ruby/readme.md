# Ruby configuration

## `rbenv` plugins

### [rbenv-default-gems][]
Automatically install gems when installing a new ruby version.
After that, link the [default-gems][] file:
```sh
ln -s $HOME/.dotfiles/code/ruby/default_gems $(rbenv root)/
```

### [rbenv-ctags][]
Automatically generate tags for the ruby stdlib when install a new ruby version.
(ctags for gems are automatically generated thanks to `gem-ctags`, found in the [default-gems][] file)

[rbenv-ctags]: https://github.com/tpope/rbenv-ctags
[rbenv-default-gems]: https://github.com/rbenv/rbenv-default-gems
[default-gems]: ./default_gems
