# **<center>LibreOffice</center>**


**INTRODUCTION**

*libreoffice https://fr.libreoffice.org/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    mkdir $HOME/libreoffice

    docker run -d --name libreoffice -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}/libreoffice:/home/libreoffice -e DISPLAY --network none alexandreoda/libreoffice


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/libreoffice/blob/master/LICENSE)
