#!/bin/bash
echo "Pushing all repos with the same upstream:" 
echo $@

branch=$1
shift
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "Pull repo in $arg"
	cd $arg && git push --set-upstream origin $branch && echo "--Checkout complete--"
	cd ..
fi
done