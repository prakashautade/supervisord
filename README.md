# supervisord ![CI status](https://img.shields.io/badge/build-passing-brightgreen.svg)

Docker with base image [ubuntu:16.04](https://hub.docker.com/_/ubuntu/) and [Supervisord](http://supervisord.org)

## Build
```
$ git clone https://github.com/prakashautade/supervisord.git
$ cd supervisord
$ docker build -t prakashautade/supervisord .
```
## Run docker image
```
$ docker run --name supervisord -itd prakashautade/supervisord
```
## Go to bash shell
```
$ docker exec -it supervisord bash
```
