#!/bin/bash

mkdir -p ~/.vim/{swap,backup,autoload,bundle}

# Change to home directory
pushd ~
# link the bash, git and vim rc files
ln -s ~/gitroot/cfg/vim-pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim

pushd .vim/bundle
git clone git://github.com/ntpeters/vim-better-whitespace.git
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/godlygeek/tabular
git clone git://github.com/petRUShka/vim-opencl.git
git clone https://github.com/wting/rust.vim.git
git clone https://github.com/tikhomirov/vim-glsl
popd

ln -s ~/gitroot/cfg/bash_rc .bashrc
ln -s ~/gitroot/cfg/git_cfg .gitconfig
ln -s ~/gitroot/cfg/vim_rc .vimrc

# move back to original working directory
popd
