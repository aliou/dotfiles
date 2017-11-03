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
