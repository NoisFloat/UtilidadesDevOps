#!/bin/bash

# Este script agrega entradas en el archivo /etc/hosts para GitLab y Jenkins.

# Verificar si se están pasando las direcciones IP como argumentos
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <Gitlab_IP> <Jenkins_IP>"
  exit 1
fi

# Obtener las direcciones IP desde los parámetros
GITLAB_IP=$1
JENKINS_IP=$2

# Definir los nombres de dominio
GITLAB_DOMAIN="gitlab.tryhackme.loc"
JENKINS_DOMAIN="jenkins.tryhackme.loc"

# Agregar las entradas al archivo /etc/hosts
echo "Agregando entradas a /etc/hosts..."
echo "$GITLAB_IP $GITLAB_DOMAIN" | sudo tee -a /etc/hosts > /dev/null
echo "$JENKINS_IP $JENKINS_DOMAIN" | sudo tee -a /etc/hosts > /dev/null

echo "Entradas agregadas correctamente:"
echo "$GITLAB_IP $GITLAB_DOMAIN"
echo "$JENKINS_IP $JENKINS_DOMAIN"


cat /etc/hosts
