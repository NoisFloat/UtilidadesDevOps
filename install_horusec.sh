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

isInstalledCurl=$(which curl) != ""
isInstalledJq=$(which jq) != ""
isInstalledGit=$(which git) !=""

echo $isInstalledCurl
echo $isInstalledJq
echo $isInstalledGit
