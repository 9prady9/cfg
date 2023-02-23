#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p ~/.vim/{swap,backup,autoload,bundle}

# Change to home directory
pushd ~
# backup existing bashrc file
mv .bashrc .bashrc_bkp_`date +"%F"`

# vim plugins and cfg
ln -sf ${SCRIPT_DIR}/vim/vim-pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim
ln -sf ${SCRIPT_DIR}/vim/vim-better-whitespace .vim/bundle/vim-better-whitespace
ln -sf ${SCRIPT_DIR}/vim/vim-airline .vim/bundle/vim-airline
ln -sf ${SCRIPT_DIR}/vim/vim-airline-themes .vim/bundle/vim-airline-themes
ln -sf ${SCRIPT_DIR}/vim/vim-fugitive .vim/bundle/vim-fugitive
ln -sf ${SCRIPT_DIR}/vim/tabular .vim/bundle/tabular
ln -sf ${SCRIPT_DIR}/vim/vim-opencl .vim/bundle/vim-opencl
ln -sf ${SCRIPT_DIR}/vim/rust.vim .vim/bundle/rust.vim
ln -sf ${SCRIPT_DIR}/vim/vim-glsl .vim/bundle/vim-glsl

ln -sf ${SCRIPT_DIR}/vim/vim_rc .vimrc

# other cfgs
ln -sf ${SCRIPT_DIR}/bash_rc .bashrc
ln -sf ${SCRIPT_DIR}/git_cfg .gitconfig

# neovim cfg
ln -sf ${SCRIPT_DIR}/neovim .config/nvim

# move back to original working directory
popd
