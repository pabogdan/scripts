#!/bin/bash
echo "Script to pull current branch in the following repositories:" 
echo $@

for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "Push repo in $arg"
	cd $arg && git push && echo "--Push complete--"
	cd ..
fi
done