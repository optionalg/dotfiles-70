#!/bin/bash
# Author: Ryan L McIntyre
# inspiration: http://blog.self.li/post/74294988486/creating-a-post-installation-script-for-ubuntu

# post clean-up

cd ~
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music

# restore apps that I use

# some background info:
# nfs-common: for mounting network drives, etc
# gist
# https://github.com/defunkt/gist

# todo: google chrome

# PPAs
sudo add-apt-repository --yes ppa:fontforge/fontforge

sudo apt-get update

# install apps + apps for development
sudo apt-get -y install \
    nfs-common git gitk gitg \
    fontforge ruby \
    keepassx shutter \
    virtualbox virtualbox-guest-additions-iso \
    skype curl gparted geany \
    npm vlc shellcheck
    
# dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
    
# npm
sudo npm install -g write-good

# gems
sudo gem install gist
