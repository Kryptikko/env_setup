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


