#!/bin/bash

echo "Atualizando Servidor....."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip

echo "Baixando e copiando os arquivos da aplicação....."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp linux-site-dio-main/* /var/www/html/ -R

chmod -x /home/assis/linux-projeto2-iac/iac2.sh
