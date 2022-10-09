#!/bin/bash

echo -e "Updating, upgrading, installing packages... \n"
sudo apt-get update && sudo apt-get upgrade -y

#Installation Proftpd et Openssl
sudo apt install openssl proftpd-core filezilla -y 

#Modification des fichier de configuration

echo - "Creation de fichier Backup \n"
cd /etc/proftpd/
sudo cp proftpd.conf proftpd.conf.save proftpd.conf.origin
sudo cp tls.conf tls.conf.save
sudo cp modules.conf modules.conf.save
sudo mkdir /etc/proftpd/conf.d/ftp.conf

#Ajout d'un utilisateur
echo -e "Création d'un utilisateur \n"
./useradd.sh

#sécurisation avec TLS
echo -e "TLS over FTP"
./Openssl

#ajout des paramètres de configuration

sudo rm proftpd.conf modules.conf tls.conf
sudo cp proftpd.conf /etc/proftpd/
sudo cp modules.conf /etc/proftpd/
sudo cp tls.conf /etc/proftpd/

#Redemarrage de proftpd

sudo systemctl restart proftpd
