#!/bin/bash
echo "Script to change branches in the following repositories:" 
echo $@

branch=$1
shift
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "Pull repo in $arg"
	cd $arg && git fetch && echo "--Fetch complete--"
	cd ..
fi
done