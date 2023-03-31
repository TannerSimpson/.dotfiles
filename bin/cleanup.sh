#!/bin/bash

# Remove the .vimrc file in your home directory.
rm -f ~/.vimrc

# Remove the line ‘source ∼/.dotfiles/bashrc custom’ in your .bashrc file in your home directory.
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc

# Remove the .TRASH directory inside of your home directory.
rm -rf ~/TRASH
