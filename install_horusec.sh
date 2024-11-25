#!/bin/bash
#This is for installation "Horusec" in an image of docker "ubuntu:latest"

#Instalation of dependencies
apt-get update -y
apt install curl -y
apt install jq -y
apt install git -y
#apt install sudo 

if [ "$(which curl)" != "" -a "$(which jq)" != "" -a "$(which git)" != ""  -a  "$(which curl)" != ""]
then
echo "Tienes instalado curl"
else
echo "Ocurrio un error en la instalacion de dependencias"
fi