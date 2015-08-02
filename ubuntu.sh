#!/usr/bin/env bash

Blue='\e[0;34m'
Grey='\e[0;30m'
Clean='\e[0;10m'

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

echo -e "${Blue}Installing Ubuntu packages ... ${Clean}"
 apt-get install build-essential \
 				cmake \
 				git \
 				vim

echo -e "${Blue}Making CapsLock usefull ... ${Clean}"
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

echo -e "${Blue}Setuping Vim ... ${Clean}"
cp ./vimrc $HOME/.vimrc

echo -e "${Grey}	Installing Pathogen ${Clean}"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo -e "${Grey}	Fetching Molokai Theme ${Clean}"
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors
#echo -e "${Grey}	 Installing Vim Plugins ${Clean}"

echo -e "${Blue}Setuping Bash ... ${Clean}"
#cp ./bashrc $HOME/.bashrc
#source  $HOME/.bashrc

echo -e "${Blue}Setuping Bash ... ${Clean}"
