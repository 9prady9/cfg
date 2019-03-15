#!/bin/bash

mkdir -p ~/.vim/{swap,backup,autoload,bundle}

# Change to home directory
pushd ~
# backup existing bashrc file
mv .bashrc .bashrc_bkp_`date +"%F"`

# link the bash, git and vim rc files
ln -s ~/gitroot/cfg/vim-pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim

ln -s ~/gitroot/cfg/vim-better-whitespace .vim/bundle/vim-better-whitespace
ln -s ~/gitroot/cfg/vim-airline .vim/bundle/vim-airline
ln -s ~/gitroot/cfg/vim-airline-themes .vim/bundle/vim-airline-themes
ln -s ~/gitroot/cfg/vim-fugitive .vim/bundle/vim-fugitive
ln -s ~/gitroot/cfg/tabular .vim/bundle/tabular
ln -s ~/gitroot/cfg/vim-opencl .vim/bundle/vim-opencl
ln -s ~/gitroot/cfg/rust.vim .vim/bundle/rust.vim
ln -s ~/gitroot/cfg/vim-glsl .vim/bundle/vim-glsl

ln -s ~/gitroot/cfg/bash_rc .bashrc
ln -s ~/gitroot/cfg/git_cfg .gitconfig
ln -s ~/gitroot/cfg/vim_rc .vimrc

# move back to original working directory
popd
