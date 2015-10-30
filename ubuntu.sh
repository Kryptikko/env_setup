#!/usr/bin/env bash

Blue='\e[0;34m'
Grey='\e[0;30m'
Clean='\e[0;10m'

sudo ./shared/debian.sh


./shared/vim.sh

echo -e "${Blue}Making CapsLock usefull ... ${Clean}"
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

echo -e "${Blue}Setuping Bash ... ${Clean}"
#cp ./bashrc $HOME/.bashrc
#source  $HOME/.bashrc
