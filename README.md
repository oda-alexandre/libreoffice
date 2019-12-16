# LIBREOFFICE

<img src="https://linagora.com/wp-content/uploads/2018/06/LibreOffice-logo-300x169.png" width="200" height="200"/>

## INDEX

- [LIBREOFFICE](#libreoffice)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/libreoffice/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/libreoffice/commits/master)

## INTRODUCTION

Docker image of :

-[Libreoffice](https://www.libreoffice.org/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/libreoffice/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name libreoffice -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/libreoffice -e DISPLAY --network none alexandreoda/libreoffice```

> The `--network none` option is used to disconnect the network to avoid MITM attacks, macros and telemetry.

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/libreoffice/blob/master/LICENSE)
