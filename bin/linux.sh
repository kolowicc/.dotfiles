#/bin/bash

CURR_OS=$(uname)

######################
#check if OS is linux
if [[ "$CURR_OS" != *"Linux"* ]]; then
	#dump err and quit
	echo "ERROR -> INCORRECT OS DETECTED FOR TARGET">>linuxsetup.log
	exit
fi
######################
	#continue
	mkdir -p ~/.TRASH
	mv ~/.vimrc ~/.bup_vimrc:
	echo "changed .vimrc to .bup_vimrc" >> linuxsetup.log
	~/.dotfiles/etc/.vimrc > ~/.vimrc
	echo source ~/.dotfiles/etc/bashrc_custom>> ~/.bashrc
