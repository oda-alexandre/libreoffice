FROM debian:stretch-slim

MAINTAINER http://www.oda-alexandre.com/

# VARIABLES
ENV USER libreoffice
ENV LANG fr

# MODIFICATION DU FICHIER /etc/apt/sources.list AVEC LES REPOS contrib non-free
RUN rm -rf /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
libreoffice \
libreoffice-l10n-${LANG} && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD libreoffice
