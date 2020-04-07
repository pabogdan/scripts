#!/bin/bash
echo "Script to report branch and state the following repositories:" 
echo $@
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "--------------------------------"
	echo "$arg"
	cd $arg && git status && echo "================================"
	cd ..
fi
done