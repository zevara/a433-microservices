#!/bin/sh
#Build image
echo "build image"
build=$(docker build -t item-app:v1 .)
echo "$build"
sleep 3
echo 

#see list image
echo "see list images"
list=$(docker images)
echo "$list"
sleep 3
echo 

#changing image name to github packages format
echo "tag images"
tag=$(docker image tag item-app:v1 ghcr.io/zevara/item-app:v1 )
echo "$tag"
sleep 3
echo 

#login github packages
echo "login github packages"
login=$(echo $CR_PAT | docker login ghcr.io -u zevara --password-stdin)
echo "$login"
sleep 3
echo 

#pusg to github packages
echo "push github packages"
push=$(docker push ghcr.io/zevara/item-app:v1)
echo "$push"
sleep 3
echo 


