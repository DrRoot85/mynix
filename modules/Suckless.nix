{...}:

{
	services.xserver.windowManager.dwm.enable = true;
	displayManager.defaultSession = "none+dwm";
	desktopManager.xterm.enable = false;
#	services.xserver.windowManager.dwm.package = pkgs.dwm.overrideAttrs {
#  src = /home/DrRoot/.config/Suckless/dwm;
#};


    nixpkgs.overlays = [
    inputs.dwm-overlay.overlays.default;
    inputs.dmenu-overlay.overlays.default;
    inputs.st-overlay.overlays.default;
    inputs.slstatus-overlay.overlays.default;
  ];



#nixpkgs.overlays = [
#  (final: prev: {
#    dwm = prev.dwm.overrideAttrs (old: {
#  			src = /home/DrRoot/.config/Suckless/dwm;
#      });
#    })
#];




environment.systemPackages = with pkgs; [

 xorg.xinit sxhkd stdenv
 tldr unzip gnumake gh 
 xwallpaper pywal16
 virt-manager synergy
 picom kitty
 dunst nsxiv
 libX11 libXinerama zlib libXft 
 libX11 libXinerama libXft
 libX11 libXau libXdmcp 
 pkg-config
     autoconf
    boost
    cmake
    dmenu
    dwm
    emacs
    file
        gcc
    git
    gnumake
        silver-searcher
            tmux
    ycmd
    wget
    xsel
      mpv
         glxinfo
           aircrack-ng
              autocutsel
               bash-completion
                  bridge-utils
                      cabextract
    ccache
        cmake
    colordiff
    compton
        ccache
    cgdb
    cifs-utils

    lshw
    graphviz
        xarchiver
    xclip

    firefox-esr
    ycmd

        libvdpau
    vulkan-loader
    vulkan-validation-layers
    vulkan-tools
];
}
