#!/bin/bash

groupadd ftpgroup

read -e "entré le nom d'utilsateur :" user

adduser $user --shell /bin/false --home /var/www/$user

adduser $user ftpuser
