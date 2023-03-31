# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
# bin/
This directory has two different scripts: linux.sh and cleanup.sh
The linux.sh script installs and configures packages on the Linux system
The cleanup.sh script will reverse all of the changes made by the linux.sh script. Inlcuding removing any directories or files created by it. 
# Makefile
This file will run two scripts, first the cleanup.sh to ensure that the system is clean before running the linux.sh script. Then it will run the cleanup.sh script to reverse any changes made by the linux.sh script.
# bashrc.custom
The .bashrc.custom file sets up an environment variable, aliases, ssh alias, and the file management alias which makes the command line more efficient 
#.vimrc
This file sets basic options for vim
