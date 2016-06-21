
Update 2016-06-21: Use the Docker for Mac thingy, "_It Just Works_".
Update November 4th: Nevermind this and checkout `docker-machine` instead.

### Installation

```sh
brew install boot2docker docker
```

`boot2docker` is an utility running a small linux VM with the docker deamon in
it, because OS X can't run the deamon yet. Or something.

If installed from Homebrew, `boot2docker` is running at launch thanks to a
`launchagent`. So the only thing to do is to export the needed environment
variables.

However, since running `boot2docker` means also running Virtualbox, there's a
good change the launchagent file is disabled. So make sure to run
`boot2docker up` before using Docker.
