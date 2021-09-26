#! /bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y vim git wget curl tree htop gcc make bison

# hh
sudo add-apt-repository -y ppa:ultradvorka/ppa && sudo apt-get update && sudo apt-get install hstr && hstr --show-configuration >> ~/.bashrc && . ~/.bashrc

#Go installation
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm
gvm install $(gvm listall | grep -v 'release' | tail -n2 | head -n1) -B
gvm use $(gvm listall | grep -v 'release' | tail -n2 | head -n1) --default

# jump
wget https://github.com/gsamokovarov/jump/releases/download/v0.40.0/jump_0.40.0_amd64.deb && sudo dpkg -i jump_0.40.0_amd64.deb
jump shell >> ~/.bashrc
