#!/bin/bash

#build image docker dengan nama item-app & tag v1
docker build -t item-app:v1 .
#to make it tidier, pemisah
echo "\n"
#show list of docker images
docker images
echo "\n"
#ganti nama image supaya bisa diup ke docker hub
docker tag item-app:v1 smamhtn/item-app:v1
echo "\n"
#login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u smamhtn --password-stdin
echo "\n"
#push the image to docker hub repo
docker push smamhtn/item-app:v1