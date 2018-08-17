#!/usr/bin/bash

INSTALL=$1
VERSION=$2
URL="https://github.com/jubalh/nudoku/archive"

if [ ! $INSTALL ]; then
	echo "Passe o parametro install ou/remove"
	if [ $INSTALL == install ]; then
    		if [ ! $VERSION ]; then
			VERSION=1.0.0
			echo "Baixando a versão $VERSION"
			wget "$URL/$VERSION.tar.gz"
    		else 
			echo
        		wget "$URL/$VERSION.tar.gz" 
    		fi
	fi
fi
	
