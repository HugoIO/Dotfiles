echo "Installing the needed packages"
pacman -Sy xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xprop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono ttf-joypixels \
	ttf-font-awesome sxiv mpv ffmpeg imagemagick fzf man-db feh xclip maim zip unrar unzip p7zip xdottool paprus-icon-theme dosfstools ntfs-3g \
	git pipewire pipewire-pulse arc-gtk-theme picom libnotify dunst jq aria2 cowsay networkmanager rsync \
	pamixer cmus libconfig pamixer libconfig libx11 libxft libxinerama ttf-hack gnu-free-fonts pulseaudio-alsa htop alacritty jq curl mpv fzf yt-dlp man-db
systemctl enable NetwoekManager --now
