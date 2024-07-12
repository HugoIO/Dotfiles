#!/bin/bash
#

echo "Installing the needed packages"
pacman -Sy xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xprop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono ttf-joypixels ttf-jetbrains-mono-nerd \
	ttf-font-awesome sxiv mpv ffmpeg imagemagick fzf man-db feh xclip maim zip unrar unzip p7zip xdotool papirus-icon-theme dosfstools ntfs-3g \
	git pipewire pipewire-pulse arc-gtk-theme picom libnotify dunst jq aria2 cowsay networkmanager rsync \
	pamixer cmus libconfig pamixer libconfig libx11 libxft libxinerama ttf-hack gnu-free-fonts pulseaudio-alsa htop alacritty jq curl mpv fzf yt-dlp man-db
echo "setting up NetworkManager"
systemctl enable NetwoekManager --now

dotfiles=("bspwm" "i3" "nimdow" "suckless" "suckless-old" "alacritty" "picom" "polybar" "rofi" "sxhkd")

read -p "Which dotfiles do you want to set up? (Separate multiple options with spaces, or choose 'all' for all dotfiles): " choices

# Function to copy dotfiles
copy_dotfiles() {
  local dotfile=$1
  local target_dir="$HOME/.config/$dotfile"

  if [ ! -d "$target_dir" ]; then
    echo "Copying $dotfile dotfiles to $target_dir..."
    cp -r "$dotfile" "$target_dir"
    echo "Done."
  else
    echo "The $dotfile dotfiles already exist in $target_dir."
  fi
}

if [ "$choices" == "all" ]; then
  for dotfile in "${dotfiles[@]}"; do
    copy_dotfiles "$dotfile"
  done
else
  for choice in $choices; do
    if [[ " ${dotfiles[*]} " == *" $choice "* ]]; then
      copy_dotfiles "$choice"
    else
      echo "Invalid option: $choice"
    fi
  done
fi
echo "Adding the bin folder to .local/bin/"
mkdir $HOME/.local/
mv bin $HOME/.local/
echo "PATH=$PATH:~/.local/bin" >> .bashrc
echo "Script finished. Shutting down...."
