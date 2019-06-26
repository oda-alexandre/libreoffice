# LIBREOFFICE

<img src="https://linagora.com/wp-content/uploads/2018/06/LibreOffice-logo-300x169.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/libreoffice/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/libreoffice/commits/master)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

-[Libreoffice](https://www.libreoffice.org/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/libreoffice/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name libreoffice -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/libreoffice -e DISPLAY --network none alexandreoda/libreoffice
```

> L'option `--network none` sert à déconnecter le réseau internet afin d'éviter les attaque MITM, macros et la télémétrie.


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/libreoffice/blob/master/LICENSE)
