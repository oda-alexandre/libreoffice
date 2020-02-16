FROM debian:stretch-slim

LABEL authors https://www.oda-alexandre.com

ENV USER libreoffice
ENV HOME /home/${USER}
ENV LOCALES fr_FR.UTF-8
ENV LANG_l10n fr

RUN echo -e '\033[36;1m ******* ADD contrib non-free IN sources.list ******** \033[0m' && \
  rm -rf /etc/apt/sources.list && \
  echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt-get update && apt-get install -y --no-install-recommends \
  sudo \
  locales \
  libreoffice \
  libreoffice-l10n-${LANG_l10n}

RUN echo -e '\033[36;1m ******* CHANGE LOCALES ******** \033[0m' && \
  locale-gen ${LOCALES}

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
  sudo apt-get --purge autoremove -y && \
  sudo apt-get autoclean -y && \
  sudo rm /etc/apt/sources.list && \
  sudo rm -rf /var/cache/apt/archives/* && \
  sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD libreoffice \