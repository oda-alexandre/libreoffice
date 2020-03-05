# LIBREOFFICE

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904461/libreoffice-logo.jpg)

## INDEX

- [LIBREOFFICE](#libreoffice)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/libreoffice/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/libreoffice/commits/master)

## INTRODUCTION

Docker image of :

-[Libreoffice](https://www.libreoffice.org/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/libreoffice/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker  run -d --name libreoffice -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/libreoffice -e DISPLAY --network none alexandreoda/libreoffice
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  libreoffice:
    container_name: libreoffice
    image: alexandreoda/libreoffice
    restart: no
    network_mode: none
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/libreoffice"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/libreoffice/blob/master/LICENSE)
