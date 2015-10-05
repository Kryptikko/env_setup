#!/usr/bin/env bash

Blue='\e[0;34m'
Grey='\e[0;30m'
Clean='\e[0;10m'

sudo ./shared/linux.sh

./shared/vim.sh

echo -e "${Blue}Setuping Bash ... ${Clean}"
#cp ./bashrc $HOME/.bashrc

echo -e "${Blue}Making CapsLock usefull ... ${Clean}"
/usr/bin/setxkbmap -option ''
/usr/bin/setxkbmap -option 'caps:escape'

echo "/usr/bin/setxkbmap -option 'caps:escape'" >> $HOME/.bashrc
echo 'PS1=${PS1::(-3)}"$(__git_ps1)\[\033[00m\]\$ "' >> $HOME/.bashrc

#source  $HOME/.bashrc
