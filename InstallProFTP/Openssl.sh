#!/bin/bash

#creation fichier ssl
sudo mkdir /etc/proftpd/ssl/

# generating server key
echo "Generating private key"

sudo openssl req -x509 -newkey rsa:1024 -keyout /etc/proftpd/ssl/proftpd.key.pem -out /etc/proftpd/ssl/proftpd.cert.pem -nodes -days 365
sudo chmod 600 /etc/proftpd/ssl/proftpd.key.pem
sudo chmod 600 /etc/proftpd/ssl/proftpd.cert.pem
