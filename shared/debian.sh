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
 				htop \
 				curl \
 				cmake \
 				git \
 				vim

echo -e "${Blue}Installing NodeJs .. ${Clean}"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get install --yes nodejs

echo -e "${Blue}Setupping Git .. ${Clean}"
git config --global user.email "velin.br.vangelov@gmail.com"
git config --global user.name "Kryptikko"

cp rc/gitignore $HOME/.gitignore
#apt-get install silversearcher-ag
#https://github.com/junegunn/fzf


