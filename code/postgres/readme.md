## Installing `pgenv`

```bash
# Fetch the project.
go get github.com/mislav/anyenv

# Build the `pgenv` binary.
cd $GOPATH/src/github.com/mislav/anyenv
PROGRAM_NAME=pgenv PROGRAM_EXECUTABLE=postgres make

# Move the `pgenv` binary in our path.
mv pgenv $GOPATH/bin

# Create the pgenv folder and the versions folder.
mkdir -p ~/.pgenv/versions

# Initialize `pgenv`
pgenv init

# Build Postgresql and add them to `~/.pgenv/versions`
```
