# Projeto
- Restaurar o snapshot criado anteriormente no virtualbox;
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível [Nesse Link](https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip)
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.
### Criar Script
nano iac2.sh
```
#!/bin/bash

echo "Atualizando Servidor....."

apt-get update
apt-get ugrade -y
apt-get install apache 2 -y
apt-get install unzip

echo "Baixando e copiando os arquivos da aplicação....."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp linux-site-dio-main/* /var/www/html/ -R
```
