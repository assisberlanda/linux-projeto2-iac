#!/bin/bash

echo "Apagando Arquivosr....."

apt-get remove apache2 -y
apt-get remove unzip

echo "Baixando e copiando os arquivos da aplicação....."

cd /tmp
rm main.zip
rm -Rf linux-site-dio-main

chmod -x /home/assis/linux-projeto2-iac/apagar_iac2.sh



