#!/bin/bash
echo "Hello user. Deploying project now ..."

firstline="./source/changelog.md"
firstline=$(head $firstline -n 1)

read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo $version

echo "Would you like to continue with the deployment?"
echo "1 = continue deployment"
echo "0 = exit deployment"
read versioncontinue

if [ $versioncontinue -eq 1 ]
then
  for filename in source/*
  do
    if [ $filename == "source/secretinfo.md" ]
    then
      echo "Not copying" $filename
    else
      echo "Copying" $filename
      cp $filename build
    fi
  done
echo "Files in build folder:"
ls ./build
else
  echo "Ok, stopping deployment"
fi