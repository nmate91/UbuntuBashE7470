#!/bin/sh
apt-get update  # To get the latest package lists
apt-get install vim -y #install vim

#select theme
apt-get install dconf-cli
wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh

#get go vim installer script
apt-get update
wget https://raw.githubusercontent.com/xlucas/go-vim-install/master/install.sh
chmod +x install.sh

#install golang
./install.sh -go https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz

#install extensions for vim
source ~/.profile
./install.sh -vim
source ~/.profile
#install sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text -y

#install spotify
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
apt-get update
# 4. Install Spotify
apt-get install spotify-client

#install vscode
dpkg -i https://go.microsoft.com/fwlink/?LinkID=760868
apt-get install -f
