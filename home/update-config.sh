#!/bin/bash


echo "config updates!!!"

DATE="$(date)"

echo "$DATE"

CONFIG="$HOME/.config"
# DOTFILES_HOME="$HOME/Desktop/MinhCoder-dotfiles/home"
# DOTFILES_CONFIG="$HOME/Desktop/MinhCoder-dotfiles/config"
# DOTFILES_ZSH_THEME="$HOME/Desktop/MinhCoder-dotfiles/zsh-themes"

DOTFILES_HOME="$HOME/Desktop/Dotfiles/home"
DOTFILES_CONFIG="$HOME/Desktop/Dotfiles/config"
DOTFILES_ZSH_THEME="$HOME/Desktop/Dotfiles/zsh-themes"


set -xe

# .config folder
cp -r $CONFIG/alacritty $DOTFILES_CONFIG
cp -r $CONFIG/bspwm $DOTFILES_CONFIG
cp -r $CONFIG/i3 $DOTFILES_CONFIG
cp -r $CONFIG/neofetch $DOTFILES_CONFIG
cp -r $CONFIG/nvim $DOTFILES_CONFIG
cp -r $CONFIG/picom $DOTFILES_CONFIG
cp -r $CONFIG/polybar-1 $DOTFILES_CONFIG
cp -r $CONFIG/polybar-2 $DOTFILES_CONFIG
cp -r $CONFIG/polybar-i3status $DOTFILES_CONFIG
cp -r $CONFIG/sxhkd $DOTFILES_CONFIG
cp -r $CONFIG/dmenu $DOTFILES_CONFIG
cp -r $CONFIG/qtile $DOTFILES_CONFIG
cp -r $CONFIG/clangd $DOTFILES_CONFIG
cp -r $CONFIG/kitty $DOTFILES_CONFIG
cp -r $CONFIG/rofi $DOTFILES_CONFIG

# home folder
cp $HOME/.tmux.conf $DOTFILES_HOME
cp $HOME/.zshrc $DOTFILES_HOME
cp -r $HOME/.doom.d $DOTFILES_HOME
cp $HOME/Desktop/.clang-format $DOTFILES_HOME 
cp -r ~/wallpapers $DOTFILES_HOME
cp -r ~/.vimrc $DOTFILES_HOME
cp -r ~/vim_config $DOTFILES_HOME
cp -r ~/.gvimrc $DOTFILES_HOME
cp ~/.prettierrc.json $DOTFILES_HOME
cp ~/update-config.sh $DOTFILES_HOME

cp ~/.emacs.d/init.el $DOTFILES_HOME/.emacs.d
cp ~/.emacs.d/pkg.el $DOTFILES_HOME/.emacs.d
cp ~/.emacs.d/theme.el $DOTFILES_HOME/.emacs.d
cp -r ~/.emacs.d/settings $DOTFILES_HOME/.emacs.d
cp -r ~/.emacs.d/themes $DOTFILES_HOME/.emacs.d

# zsh theme
cp $HOME/.oh-my-zsh/themes/passion.zsh-theme $DOTFILES_ZSH_THEME
cp $HOME/.oh-my-zsh/themes/minh.zsh-theme $DOTFILES_ZSH_THEME
cp $HOME/.oh-my-zsh/themes/minh2.zsh-theme $DOTFILES_ZSH_THEME
cp $HOME/.oh-my-zsh/themes/QM.zsh-theme $DOTFILES_ZSH_THEME

