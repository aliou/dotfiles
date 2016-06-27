## Installing `exenv`

```bash
# Fetch the project.
go get github.com/mislav/anyenv

# Build the `exenv` binary.
cd $GOPATH/src/github.com/mislav/anyenv
PROGRAM_NAME=exenv PROGRAM_EXECUTABLE=elixir make

# Move the `exenv` binary in our path.
mv exenv $GOPATH/bin

# Create the exenv folder and the versions folder.
mkdir -p ~/.exenv/versions

# Initialize `exenv`
exenv init

# Download Elixir versions from <https://github.com/elixir-lang/elixir/releases>
# and add them to `~/.exenv/versions`
```