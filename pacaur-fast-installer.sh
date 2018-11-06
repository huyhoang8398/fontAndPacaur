#!/bin/bash

# Get sudo permissions for script run
sudo -v

#install wget if necessary
sudo pacman -S --needed wget --noconfirm

#install pacaur
sudo pacman -S --needed base-devel --noconfirm

cd ~/Downloads
sudo pacman -S --needed curl openssl yajl perl expac --noconfirm
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
wget https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz
tar -xvf cower.tar.gz
cd cower
makepkg -si --noconfirm

cd ~/Downloads
wget https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz
tar -xvf pacaur.tar.gz
cd pacaur
makepkg -si --noconfirm