#!/bin/bash

# Dotfiles Repo is required to be cloned 
backupbashrc=~/.bashrc.bak
bashrcfile=~/.bashrc
fileloc=~/dotfiles/homefiles/.bashrc

#backup old .bashrc file to a .bashrc.bak file

if [ -f "$bashrcfile" ]; then 
	mv "$bashrcfile" "$backupbashrc"
fi 

#symbolically links my .bashrc in dotfiles to home directory

ln -s "$fileloc" "$bashrcfile"

echo "Run command 'source ~/.bashrc' to apply new awesome alias updates."
