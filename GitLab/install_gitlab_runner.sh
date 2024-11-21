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

# 6. Registrar el GitLab Runner
echo "Registrando GitLab Runner..."
# Cambia los valores de las siguientes variables según tu configuración.
read -p "Introduce la URL de tu GitLab (por ejemplo, https://gitlab.com): " gitlab_url
read -p "Introduce el token de registro de GitLab Runner: " gitlab_token
read -p "Introduce el nombre de tu ejecución del GitLab Runner (ejemplo: my-runner): " runner_name
read -p "¿Deseas ejecutar el runner como shell (por defecto)? (y/n): " executor_type

# Si el usuario no ingresa un tipo de executor, usamos "shell" por defecto.
executor=${executor_type:-"shell"}

# Registrar el runner
sudo gitlab-runner register --url "$gitlab_url" --registration-token "$gitlab_token" --name "$runner_name" --executor "$executor"

echo "GitLab Runner ha sido registrado correctamente."
