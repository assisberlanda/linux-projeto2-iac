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
apt update
apt ugrade -y
apt install apache 2 -y
apt install unzip
wget /tmp/https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd /tmp
unzip main.zip
cp linux-site-dio/* /var/www/html/ -R
```
