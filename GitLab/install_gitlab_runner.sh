#!/bin/bash

# Este script instala y configura GitLab Runner en Ubuntu.

# 1. Descargar el binario de GitLab Runner
echo "Descargando GitLab Runner..."
sudo curl -L --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64"

# 2. Hacer el archivo ejecutable
echo "Configurando permisos para el binario..."
sudo chmod +x /usr/local/bin/gitlab-runner

# 3. Crear un usuario para GitLab Runner
echo "Creando el usuario gitlab-runner..."
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# 4. Instalar GitLab Runner
echo "Instalando GitLab Runner..."
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

# 5. Iniciar GitLab Runner
echo "Iniciando GitLab Runner..."
sudo gitlab-runner start



echo "GitLab Runner ha sido registrado correctamente."
