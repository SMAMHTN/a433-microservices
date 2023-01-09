#!/bin/bash

#build image docker dengan nama item-app & tag v1
docker build -t karsajobs-ui:latest .
#to make it tidier, pemisah
echo "\n"
#show list of docker images
docker images
echo "\n"
#ganti nama image supaya bisa diup ke docker hub
docker image tag karsajobs-ui:latest smamhtn/karsajobs-ui:latest
echo "\n"
#login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u smamhtn --password-stdin
echo "\n"
#push the image to docker hub repo
docker push smamhtn/karsajobs-ui:latest