#!/bin/bash

SEARCH=$("source ~/.dotfiles/bashrc_custom")
REPLACE=$()

#remove vimrc in home dir
rm ~/.vimrc

#search and replace the line in bashrc_custom with blank
sed "s/$SEARCH/$REPLACE" ~/.bashrc

#remove the .trash dir
rm -r ~/.TRASH/

