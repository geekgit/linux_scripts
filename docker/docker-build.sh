#!/bin/bash
CurrPath=$(pwd)
echo "Path: $CurrPath"
Basename=${CurrPath##*/}
echo "Name: $Basename"
echo "docker build -t $Basename $CurrPath"
docker build -t $Basename $CurrPath
