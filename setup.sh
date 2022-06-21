#!/bin/bash

echo "thiết lập Arch linux"
echo "tác giả: MinhCoder"

DATE="$(date)"
CONFIG="$HOME/.config/"

echo "copy tất cả các folder trong config sang ~/.config"
cd ./config
sudo rm -rf ./nvim/plugin
echo "đang copy....."
sudo mv * $CONFIG
# sudo cp -r ./alacritty $CONFIG
# sudo cp -r ./autostart $CONFIG
# sudo cp -r ./bspwm $CONFIG
# sudo cp -r ./i3 $CONFIG
# sudo cp -r ./i3status $CONFIG
# sudo cp ./konsolerc $CONFIG
# sudo cp -r ./neofetch $CONFIG
# sudo cp -r ./nvim $CONFIG
# sudo cp -r ./picom $CONFIG
# sudo cp -r ./polybar $CONFIG
# sudo cp -r ./ranger $CONFIG
# sudo cp -r ./sxhkd $CONFIG
# sudo cp -r ./volumeicon $CONFIG
echo "đã copy xong!!"

echo "copy tất cả các folder trong home sang ~"
cd ../home
echo "đang copy....."
sudo mv * $HOME
# sudo cp ../.bashrc $HOME
# sudo cp ../.tmux.conf $HOME
# sudo cp ../.vimrc $HOME
# sudo cp ../.zshrc $HOME
# sudo cp -r ../.doom.d $HOME
# sudo cp -r ../.emacs.d-old $HOME
echo "đã copy xong!!"

echo "copy tất cả theme sang ~/.oh-my-zsh/themes/"
cd ../zsh-themes
mv * ~/.oh-my-zsh/themes/
echo "đã copy xong!!"

echo -n "thiết lập thành công vào $DATE"