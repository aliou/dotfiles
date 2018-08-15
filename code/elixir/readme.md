## Installing `exenv`

```bash
# Install from personal Homebrew Tap
brew tap aliou/formulae git@github.com:aliou/homebrew-formulae.git

# Create the exenv folder and the versions folder.
mkdir -p ~/.exenv/versions

# Initialize `exenv`
exenv init

# Download Elixir versions from <https://github.com/elixir-lang/elixir/releases>
# and add them to `~/.exenv/versions`
```

## Installing `elixir_ls`
```bash
# Pull the code
git clone git@github.com:JakeBecker/elixir-ls.git
cd elixir-ls

# Compile and build
mix compile
mkdir -p ~/code/lib
mix elixir_ls.release -o ~/code/lib/elixir_ls

# Link the launch script to a folder in path.
ln -s ~/code/lib/elixir_ls/language_server.sh ~/code/bin/elixir_ls
```

<!--
### Installing on Raspberry Pi
To install on a Raspberry Pi, export the following environment variables:
```bash
GOOS=linux
GOARCH=arm
```

And follow the regular instructions to build `exenv`. Then, move it to the Raspberry Pi
and follow the rest of the instructions to set it up on the Pi.
-->
