#!/bin/bash
echo "Script to create a new branch in each the following repositories:" 
echo $@

branch=$1
shift
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "New branch in $arg"
	cd $arg && git fetch && git checkout -b $branch && echo "--New branch created--"
	cd ..
fi
done