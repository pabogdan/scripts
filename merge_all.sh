#!/bin/bash
echo "Script to merge a branch in all of the following repositories:" 
echo $@

branch=$1
shift
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "In $arg"
	echo "Merging $branch" 
	echo "Into " `cd $arg && git rev-parse --abbrev-ref HEAD && cd ..`
	cd $arg && git fetch && git merge $branch && echo "--Merge complete--"
	cd ..
fi
done