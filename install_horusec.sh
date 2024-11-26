#!/bin/bash
#This is for installation "Horusec" in an image of docker "ubuntu:latest"

#Instalation of dependencies
apt-get update -y
apt install curl -y
apt install jq -y
apt install git -y

printf "\n\n\n\n"

#apt install sudo 

#Conditional to determinate the installation of horusec

if which curl > /dev/null 2>&1; then
    isInstalledCurl=true
else
    isInstalledCurl=false
fi


if which curl > /dev/null 2>&1; then
    isInstalledJq=true
else
    isInstalledJq=false
fi


if which curl > /dev/null 2>&1; then
    isInstalledGit=true
else
    isInstalledGit=false
fi


echo $isInstalledCurl
echo $isInstalledJq
echo $isInstalledGit


printf "\n\n\n\n"

if [ "$isInstalledCurl" = true ] && [ "$isInstalledJq" = true ] && [ "$isInstalledGit" = true ] && [ "$var4" = true ]; then
    echo "Todas las variables son verdaderas."
else
    echo "No todas las variables son verdaderas."
fi