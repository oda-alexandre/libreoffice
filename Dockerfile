FROM debian:buster-slim

MAINTAINER https://oda-alexandre.github.io

RUN rm -rf /etc/apt/sources.list
RUN echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y --no-install-recommends sudo libreoffice libreoffice-l10n-fr

RUN apt-get --purge autoremove -y

RUN useradd -d /home/libreoffice -m libreoffice
RUN passwd -d libreoffice
RUN adduser libreoffice sudo

USER libreoffice

CMD libreoffice
