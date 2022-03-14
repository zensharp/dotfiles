#!/usr/bin/env bash

if command -v brew &> /dev/null
then
	brew install exa
else
	mkdir exa
	cd exa
	wget -O temp.zip 'https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip'
	unzip temp.zip
	mkdir -p $HOME/.local/bin
	mv bin/* $HOME/.local/bin
fi
