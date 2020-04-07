#!/bin/bash
echo "Script to pull current branch in the following repositories:" 
echo $@

for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "Pull repo in $arg"
	cd $arg && git pull && echo "--Checkout complete--"
	cd ..
fi
done