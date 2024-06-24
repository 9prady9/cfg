#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Change to home directory
pushd ~

# backup existing bashrc file
mv .bashrc .bashrc_bkp_`date +"%F"`

# neovim cfg
ln -sf ${SCRIPT_DIR}/neovim .config/nvim

# other cfgs
ln -sf ${SCRIPT_DIR}/bash_rc .bashrc
ln -sf ${SCRIPT_DIR}/git_cfg .gitconfig

# move back to original working directory
popd
