{pkgs, ... }:

{
environment.systemPackages = with pkgs; [
##Hypr
		pyprland
		hyprpicker
		hyprcursor
		hypridle
		kitty
		hyprpaper
		hyprlock
		wofi
		cmake
		ninja
		meson

###
		qutebrowser
		openssl_1_1
		sublime4
		zed-editor
		libevdev
		nuspell
		hyphen
		hunspell
		hunspellDicts.en_US
		mpv
		imv
		waypaper
		zathura
		yt-dlp
		fzf
		tmux
		wezterm
		cool-retro-term
		starship
    	helix
    	xdg-user-dirs
];

}











