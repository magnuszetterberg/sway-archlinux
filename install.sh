#!/bin/bash
#update pacman
echo "#update pacman"

sudo pacman -Sy

#setup audio
echo "#setup audio"
sudo pacman -S pavucontrol pipewire-alsa pipewire-pulse wireplumber pipewire-audio sof-firmware lib32-pipewire &&

#setup yay
echo "#setup yay"
sudo pacman -S yay &&

#setup bluetooth
echo "#setup bluetooth"
sudo pacman -S blueman &&

#setup misc laptop stuff
echo "#setup misc laptop stuff"
sudo pacman -S brightnessctl &&

#setup sway
echo "#setup sway"
sudo pacman -S sway swaybg swaync swaylock swayidle &&

#setup conviniences
echo "#setup conviniences"
sudo pacman -S nerd-fonts stow way-displays wlogout wofi waybar kitty chromium &&

#update font-cache
echo "#update font-cache"
fc-cache -f -v &&

#setup dev-tools
echo "#setup dev-tools"
yay -S visual-studio-code-bin helix slurp


#stow your dotfiles
#echo "stow your dotfiles"
#cd dotfiles
##stow -v --target="$HOME/.config" */
