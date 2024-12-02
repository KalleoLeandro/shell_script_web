#!/bin/bash

echo "Atualizando apps"

apt-get update
apt-get upgrade -y 

echo "Instalando apps"

apt-get install apache2 unzip -y

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

