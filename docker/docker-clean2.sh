#!/bin/bash

ImagesList=$(docker images | sed 1d | awk '{print $3}')

for ImageId in $ImagesList
do
	echo "Image id: $ImageId"
	docker images | grep "$ImageId"
	cmd1="docker rmi $ImageId"
	echo $cmd1
	$cmd1
done
