#!/bin/bash

echo "Uninstall"
    sudo apt autoremove --purge libxmlsec1-openssl:amd64 perl-openssl-defaults:amd64 openssl -y
    sudo apt autoremove --purge filezilla filezilla-common filezilla libfilezilla11 -y
    sudo apt autoremove --purge proftpd-core proftpd-basic proftpd-doc proftpd-mod-crypto proftpd-mod-warp -y
echo "Done"