#!/bin/bash

# Ask for admin password
sudo -v

# Update pkgs and upgrade
sudo apt update
sudo apt -y upgrade

## Install stuff

sudo apt install -y gdebi gksu gedit curl dkms xubuntu-restricted-extras libdvd-pkg build-essential htop exfat-fuse exfat-utils gufw fslint stow libcurl3
sudo dpkg-reconfigure libdvd-pkg

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
sudo apt -fy install

# Source control
sudo apt install -y git-core git-extras git-flow git-hub gist

# Development
sudo apt install -y ruby-full php-cli
curl -L https://npmjs.org/install.sh | sudo sh
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt install -y nodejs 

# Atom
curl -s https://api.github.com/repos/atom/atom/releases | grep browser_download_url | grep -v 'beta' | grep '64[.]deb' | head -n 1| cut -d '"' -f 4 | xargs wget -P ~/Downloads/
sudo dpkg -i ~/Downloads/atom-amd64.deb

# Simplenote
curl -s https://api.github.com/repos/Automattic/simplenote-electron/releases | grep browser_download_url | grep -v 'rc' | grep 'deb' | head -n 1 | cut -d '"' -f 4 | xargs wget -O ~/Downloads/simplenote-latest.deb
sudo dpkg -i ~/Downloads/simplenote-latest.deb

# Brackets.io
wget http://mirrors.kernel.org/ubuntu/pool/main/libg/libgcrypt11/libgcrypt11_1.5.3-2ubuntu4.3_amd64.deb -P ~/Downloads/
sudo dpkg -i ~/Downloads/libgcrypt11_1.5.3-2ubuntu4.3_amd64.deb
curl -s https://api.github.com/repos/adobe/brackets/releases | grep browser_download_url | grep -v 'beta' | grep '64-bit[.]deb' | head -n 1 | cut -d '"' -f 4 | xargs wget -O ~/Downloads/brackets-latest.deb
sudo dpkg -i ~/Downloads/brackets-latest.deb

