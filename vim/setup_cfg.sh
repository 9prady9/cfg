#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p ~/.vim/{swap,backup,autoload,bundle}

# Change to home directory
pushd ~
# backup existing bashrc file
mv .bashrc .bashrc_bkp_`date +"%F"`

# link the bash, git and vim rc files
ln -sf ${SCRIPT_DIR}/vim-pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim

ln -sf ${SCRIPT_DIR}/vim-better-whitespace .vim/bundle/vim-better-whitespace
ln -sf ${SCRIPT_DIR}/vim-airline .vim/bundle/vim-airline
ln -sf ${SCRIPT_DIR}/vim-airline-themes .vim/bundle/vim-airline-themes
ln -sf ${SCRIPT_DIR}/vim-fugitive .vim/bundle/vim-fugitive
ln -sf ${SCRIPT_DIR}/tabular .vim/bundle/tabular
ln -sf ${SCRIPT_DIR}/vim-opencl .vim/bundle/vim-opencl
ln -sf ${SCRIPT_DIR}/rust.vim .vim/bundle/rust.vim
ln -sf ${SCRIPT_DIR}/vim-glsl .vim/bundle/vim-glsl

ln -sf ${SCRIPT_DIR}/bash_rc .bashrc
ln -sf ${SCRIPT_DIR}/git_cfg .gitconfig
ln -sf ${SCRIPT_DIR}/vim_rc .vimrc

# move back to original working directory
popd
