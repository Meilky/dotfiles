#!/bin/bash

echo "----- Intall enverything needed for the config"

sudo apt install -y \
	ranger \
	python3-pip \
	python3

 
if [ -d "$HOME/.config/ranger" ]; then 
	if [ -d "$HOME/.config/ranger-old" ]; then
		echo "----- Removing old backup ~/.config/ranger-old/";
		sudo rm -r ~/.config/ranger-old;
	fi;
	sudo mv ~/.config/ranger ~/.config/ranger-old; 
	echo "----- Copy old ranger config to ~/.config/ranger-old/"; 
fi;
git clone https://github.com/Meilky/ranger-config ~/.config/ranger;
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons;

if [-d "$HOME/.local/share/fonts/NerdFonts/" ]; then
	echo "----- NerdFonts is already install"
else
	git clone https://github.com/ryanoasis/nerd-fonts ~/.tmp
	cd ~/.tmp
	./install.sh
	sudo rm -r ~/.tmp
fi;

echo "----- Installing jedi and pylint for python"

pip3 install jedi
sudo apt install python3-jedi -y
pip3 install pylint

echo "----- Installing plug"

if [ -d "autoload" ]; then 
	sudo rm -r autoload; 
	echo "---- Removing old autoload"; 
fi;

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Every Plug

echo "----- Installing plugged plugin"

nvim -c "PlugInstall | qa"
 
echo "---- Congradulation, you can now use nvim with the best config ----"
