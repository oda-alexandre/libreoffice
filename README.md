# LIBREOFFICE

![libreoffice](https://raw.githubusercontent.com/oda-alexandre/libreoffice/master/img/logo-libreoffice.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/libreoffice/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![libreoffice docker build](https://img.shields.io/docker/build/alexandreoda/libreoffice.svg)](https://hub.docker.com/r/alexandreoda/libreoffice)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Libreoffice](https://www.libreoffice.org/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/libreoffice/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name libreoffice -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/libreoffice -e DISPLAY --network none alexandreoda/libreoffice
```

L'option `--network none` sert à déconnecter le réseau internet afin d'éviter la télémétrie.


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/libreoffice/blob/master/LICENSE)
