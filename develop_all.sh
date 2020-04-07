#!/bin/bash
echo "Script to run setup.py develop in the following repositories:" 
echo $@
for arg in $@
do
if [[ -d "$arg" ]]
	then
	echo "setup.py develop in $arg"
	cd $arg && python setup.py develop && echo "Development comeplete!"
	cd ..
fi
done