FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# MODIFICATION DU FICHIER /etc/apt/sources.list AVEC LES REPOS contrib non-free
RUN rm -rf /etc/apt/sources.list && \
cat <<EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian stretch main contrib non-free
deb-src http://deb.debian.org/debian stretch main contrib non-free
deb http://deb.debian.org/debian stretch-updates main contrib non-free
deb-src http://deb.debian.org/debian stretch-updates main contrib non-free
deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free
deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free
EOF

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
libreoffice \
libreoffice-l10n-fr

# AJOUT UTILISATEUR
RUN useradd -d /home/libreoffice -m libreoffice && \
passwd -d libreoffice && \
adduser libreoffice sudo

# SELECTION UTILISATEUR
USER libreoffice

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD libreoffice
