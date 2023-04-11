#! /bin/bash
su
apt update
apt upgrade
cp ./source.list /etc/apt/source.list
apt update
apt dist-upgrade
apt install sudo xorg pulseaudio git
apt install tmux cava neovim python3-pip
apt install imagemagick mpv picom

git clone https://github.com/jus7nyan/MyRice
cd MyRice
cp cava/ dunst/ nvim/ tmux/ urxvt/ /home/justnyan/.config/ -r
apt install dunst rxvt-unicode firefox-esr alsa-utils pavucontrol thunar

mkdir /home/justnyan/dwm
cp dwm_fg_alph/ /home/justnyan/dwm/ -r
cp bar.sh /home/justnyan/dwm/

cd /home/justnyan/dwm
apt install make libxft-dev libxinerama-dev
cd dwm_fg_alph
make
make clean install

cd
cd setuper
cd MyRice
cp xinitrc /home/justnyan/.xinitrc
cp bashrc /home/justnyan/.bashrc
nano /etc/sudoers
