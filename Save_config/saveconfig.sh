#!/bin/bash

date_now=`date +%Y-%m-%d %H-%M-%S`
mkdir /home/jules/Documents/Backup/
cd /etc/proftpd/
sudo cp -r proftpd.conf modules.conf tls.conf ssl/ /home/jules/Documents/backup/
cd
sudo cat xferlog >> /home/jules/Documents/backup/save.txt

tar czvf save_$date_now.tar.gz /home/jules/Documents/backup/
  