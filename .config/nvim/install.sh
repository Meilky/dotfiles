#!/bin/bash

echo "----- Installing jedi and pylint for python"

sudo apt install python3-jedi -y
pip3 install jedi
pip3 install pylint

echo "----- Installing plug"

if [ -d "autoload" ]; then 
	sudo rm -r autoload; 
	echo "---- Removing old autoload"; 
fi;

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "----- Installing plugged plugin"

nvim -c "PlugInstall | qa"
