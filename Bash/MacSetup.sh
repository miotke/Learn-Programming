#!/bin/bash

# This script will download and install all developer tools that I generally use

# Install Xcode tools
xccode-select --install


# Install Homebrew
# https://brew.sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Install ZSH
# https://ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install the Powerline Font for the ZSH Agnoster theme
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install The Ultimate Vim, single user
# https://github.com/amix/vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Changes the iTerm theme for 'robbyrussell' to 'agnoster'
# https://github.com/robbyrussell/oh-my-zsh

