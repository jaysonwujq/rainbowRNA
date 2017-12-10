#!/bin/bash

#git clone https://github.com/adamtongji/rainbowRNA
conda create -n rainbow_env --file requirement.txt -c R -c bioconda -c default
source activate rainbow_env
mkdir -p ~/bin
myPath=`pwd`

ln -s $myPath/__main__.py > ~/bin/rainbowRNA
echo $myPath > ~/bin/.rainbow_path_store
chmod 500 ~/bin/.rainbow_path_store