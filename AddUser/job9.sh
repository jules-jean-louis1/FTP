#!/bin/bash
file="create_user.csv"
bash="/bin/bash/$username"
homedir="/home/$username"
line="$username =(ALL:ALL) ALL"
group="tftpgroup"

while IFS="," read -r Id username nom prenom password role 
do
    sudo useradd -u $Id -G $group -s $bash -d $homedir -p $password $username
done < <(tail -n +2 $file)
 

