# Mountebank

A docker image for [mountebank](http://www.mbtest.org/).

## Build multi-architecture images

https://docs.docker.com/desktop/multi-arch/

```sh
# install cross-platform emulators
docker run --privileged --rm tonistiigi/binfmt --install all

# create a new multi-arch builder and use it
docker buildx create --name multiarch --use

# build and push to docker hub
docker buildx build --platform linux/amd64,linux/arm64 -t jfilipczyk/mountebank:latest --push .
```