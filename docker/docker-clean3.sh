#!/bin/bash
function docker-remove
{
	id="$1"
	echo "id: $id"
	Text=$(docker rmi "$id" 2>&1)
	Pattern0="could not find image"
	Pattern1="unable to delete"
	Pattern2="image is being used by stopped container"
	if echo $Text | grep -q "$Pattern0" ;
	then
		:
	else
			if echo $Text | grep -q "$Pattern1" ;
			then
				if echo $Text | grep -q "$Pattern2" ;
				then
					idRecur=$(echo $Text | sed -e 's/^.*container//p' | awk {'print $1'})
					echo "id-recur: $idRecur"
					docker rm --force $idRecur
					docker-remove "$id"
				else
				:
				fi
			else
				:	
			fi	
	fi
}
function docker-images-list
{
	List=$(docker images | awk {'print $3'} | tail -n +2)
	echo $List
}
function docker-images-count
{
	List=$(docker-images-list)
	Count=$(echo $List | tr " " "\n" | grep . | wc -l)
	echo $Count
}

ImagesList=$(docker-images-list)
ImagesCount=$(docker-images-count)
echo "[main] Images: |$ImagesList|"
echo "[main] Count: $ImagesCount"

while [ "$ImagesCount" -ge "1" ]
do
	echo "[loop] Images: |$ImagesList|"
	echo "[loop] Count: $ImagesCount"

	for ImageId in $ImagesList
	do
		echo "Image id: $ImageId"
		docker images | grep "$ImageId"
		docker-remove "$ImageId"
	done
	
	ImagesCount=$(docker-images-count)
	ImagesList=$(docker-images-list)
done
