#!/usr/bin/env bash

Blue='\e[0;34m'
Grey='\e[0;30m'
Clean='\e[0;10m'

echo -e "${Blue}Setuping Vim ... ${Clean}"
cp ./../rc/vimrc $HOME/.vimrc

echo -e "${Grey}	Installing Pathogen ${Clean}"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo -e "${Grey}	Fetching Molokai Theme ${Clean}"
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors
#echo -e "${Grey}	 Installing Vim Plugins ${Clean}"


