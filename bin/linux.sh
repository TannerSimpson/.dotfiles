#!/bin/bash

# Check the operating system type is Linux
if [ $(uname) != "Linux" ]; then
  echo "Error: This script is designed for Linux only" >> linuxsetup.log
  exit 1
fi

# Create the ‘.TRASH’ directory in your home directory if it doesn’t exist already
if [ ! -d "$HOME/.TRASH" ]; then
  mkdir "$HOME/.TRASH"
fi

# If the .vimrc file exists in your home directory, change its name to .bup vimrc’ and dump a message to linuxsetup.log saying that the current .vimrc file was changed to .bup vimrc
if [ -f "$HOME/.vimrc" ]; then
  mv "$HOME/.vimrc" "$HOME/.bup vimrc"
  echo "The existing .vimrc file was renamed to .bup vimrc" >> linuxsetup.log
fi

# Redirect the contents of the etc/vimrc file to a file called ‘.vimrc’ (with the dot in front) in your home directory.
sudo cat /etc/vimrc > "$HOME/.vimrc"

# Add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file located in your home directory.
echo 'source ~/.dotfiles/etc/bashrc custom' >> "$HOME/.bashrc"

# Redirect any output from echo statements to a file called ‘linuxsetup.log’
exec &>> linuxsetup.log
