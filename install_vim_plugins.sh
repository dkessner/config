#!/bin/bash
#
# install_vim_plugins.sh
#
# Darren Kessner
#

if [ -e vim ]
then
    echo 'vim' directory already exists.
    exit 1
fi

mkdir -p vim/pack/dk/start
date >> vim/install.log

pushd vim/pack/dk/start >> vim/install.log

echo "Installing vim-latex."
git clone https://github.com/vim-latex/vim-latex.git 2>> ../../../install.log
echo ':helptags vim-latex/doc' | vim >> ../../../install.log 2>&1    # :help latex-suite.txt

echo "Installing vim-processing."
git clone https://github.com/sophacles/vim-processing.git 2>> ../../../install.log

echo "Installing vim-vinegar."
git clone https://github.com/tpope/vim-vinegar.git 2>> ../../../install.log

echo "Installing vim-markdown."
git clone https://github.com/preservim/vim-markdown.git 2>> ../../../install.log
