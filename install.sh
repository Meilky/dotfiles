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
	i3 \
	i3-gaps \
	i3lock-fancy \
	lollypop \
	macchanger \
	mitmproxy \
	neofetch \
	net-tools \
	nitrogen \
	nmap \
	openjdk-11-jdk \
	openjdk-11-jre \
	openjdk-13-jdk \
	openjdk-13-jre \
	picom \
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

echo "----- Install nvm"

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

source ~/.nvm/nvm.sh

echo "----- Install node"

nvm install node

echo "----- Install npm"

nvm install --latest-npm

echo "----- Install oh-my-zsh"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

./.config/nvim/install.sh
