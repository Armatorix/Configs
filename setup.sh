#! /bin/bash

echo "#################################" >> ~/.bash.conf
echo "###   Autogenerated configs   ###" >> ~/.bash.conf
echo "#################################" >> ~/.bash.conf
GOVERSION="go1.12"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y vim git wget curl bison tmux tree htop texmaker gcc make
sudo apt-get install -y pylint golint 

# tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# hh
sudo add-apt-repository ppa:ultradvorka/ppa && sudo apt-get update && sudo apt-get install hstr && hstr --show-configuration >> .bash.conf

#Go installation
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm
gvm install $GOVERSION -B
echo "gvm use $GOVERSION 1>/dev/null" >> ~/.bash.conf

#Copy configs
cat .bash.conf >> ~/.bash.conf && rm .bash.conf
ls -pa | grep -v / | grep -vE 'README|setup' | xargs -I {} cp {} ~/
rm -rf ../Configs
echo "source ~/.bash.conf" >> ~/.bashrc
