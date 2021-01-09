#!/bin/bash

sudo apt install -y \
	aircrack-ng \
	apache2 \
	apt-transport-https \
	conky \
	curl \
	evolution \
	git \
	grub2 \
	i3-gaps \
	i3lock-fancy \
	macchanger \
	mitmproxy \
	mpc \
	mpd \
	ncmpcpp \
	ncurse-term \
	neofetch \
	net-tools \
	nitrogen \
	nmap \
	openjdk-11-jdk \
	openjdk-11-jre \
	openjdk-13-jdk \
	openjdk-13-jre \
	picom \
	polybar \
	python2 \
	python3 \
	python3-pip \
	realtek-rtl88xxau-dkms \
	ssh \
	tmux \
	tor \
	torbrowser-launcher \
	wireshark \
	zsh \
	zsh-syntax-highlighting

echo "----- Copy .config to ~/.config"

if [ -d "${HOME}/.config" ]; then
	mv $HOME/.config $HOME/.config-old
fi;

cp -r .config ~/

if [ -f "${HOME}/.Xressources" ]; then
	mv $HOME/.Xressources $HOME/.Xressources-old
fi;

cp .Xressources ~/

if [ -f "${HOME}/.xsession" ]; then
	mv $HOME/.xsession $HOME/.xsession-old
fi;

cp .xsession ~/

if [ -f "${HOME}/.zshrc" ]; then
	mv $HOME/.zshrc $HOME/.zshrc-old
fi;

cp .zshrc ~/

if [ -d "${HOME}/.mpd" ]; then
	mv $HOME/.mpd $HOME/.mpd-old
fi;

cp .mpd ~/

echo "----- Install nvm"

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

source ~/.nvm/nvm.sh

echo "----- Install node"

nvm install node

echo "----- Install npm"

nvm install --latest-npm

echo "----- Install oh-my-zsh"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "----- Installing NerdFonts"

if [-d "$HOME/.local/share/fonts/NerdFonts/" ]; then
	echo "----- NerdFonts is already install"
else
	git clone https://github.com/ryanoasis/nerd-fonts ~/.tmp
	cd ~/.tmp
	./install.sh
	sudo rm -r ~/.tmp
fi;

echo "----- Install script"

bash ~/.config/install.sh

echo "---- Congradulation, you can now use the best config ----"
