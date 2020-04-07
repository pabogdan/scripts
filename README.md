# Scripts for doing same git operation in multiple repositories at the same time

I use these (bash) scripts for various SpiNNaker and git-related tasks. 
Generally, I want to tag all SpiNNaker repositories with the same branch and perform usual operations on them atomically.
This is my solution so far.

# Use

For example, to change the branch to `master` in all folders of a directory such as:

```
SpiNNStorageHandlers
DataSpecification             
JavaSpiNNaker   
spinn_common         
SpiNNUtils
PyNN8Examples              
SpiNNFrontEndCommon  
sPyNNaker
SpiNNMachine         
sPyNNaker8
PACMAN         
spalloc                    
SpiNNMan             
SupportScripts
```

One could you the `ch_branch.sh` script:

`./ch_branch.sh master *`

So ch_branch.sh takes the branch name and  list of directories in this order. In the same category of scripts (those with the same syntax) there are: merge_all.sh new_branch.sh push_all_with_upstream.sh

However, some of the other scripts require no additional arguments to the list of directories. For example, to pull all the repositories:

`./pull_all.sh *`

In the same category of scripts there are: report_all.sh develop_all.sh fetch_all.sh push_all.sh
