#!/bin/bash
function docker-remove
{
	echo "if_error()"
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

ImagesList=$(docker images -qf "dangling=true")

for ImageId in $ImagesList
do
	echo "Image id: $ImageId"
	docker images | grep "$ImageId"
	docker-remove "$ImageId"
done
