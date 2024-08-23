{
  description = "A very basic flake";

   inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
   inputs.hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
   inputs.dwm-overlay.url = "github:DrRoot85/dwm;
   inputs.st-overlay.url = "github:DrRoot85/st;
   inputs.dmenu-overlay.url = "github:DrRoot85/dmenu;
   inputs.slstatus-overlay.url = "github:DrRoot85/slstatus;
   inputs.rust-overlay.url = "github:oxalica/rust-overlay";

  outputs = { self, nixpkgs, hyprland, ... } @inputs: {
	nixosConfigurations.mahmoudhb = nixpkgs.lib.nixosSystem 
	{
	system = "x86_64-linux";

	specialArgs = {inherit inputs;};

	modules = [
		./configuration.nix
		#./modules/hyprland.nix
		./modules/packages.nix
		./modules/firefox.nix
		./modules/nixsettings.nix
		./modules/nixconfig.nix
		./modules/dnscrypt.nix
		./modules/networking.nix
		./modules/autoupdate.nix
		./modules/fonts.nix
		./modules/firewall.nix
		./modules/bootloader.nix
		./modules/display-manager.nix
		./modules/bluetooth.nix
		./modules/clamav-scanner.nix
		#./modules/gnome.nix
		./modules/internationalisation.nix
		./modules/mac-randomize.nix
		./modules/networkinghost.nix
		./modules/nvidia.nix
		./modules/opengl.nix
		./modules/open-ssh.nix
		./modules/printing.nix
		./modules/programming-languages.nix
		./modules/rust.nix
		./modules/screen.nix
		./modules/security-services.nix
		./modules/services.nix
		./modules/sound.nix
		./modules/swap.nix
		./modules/terminal-utils.nix
		./modules/theme.nix
		./modules/time.nix
		./modules/usb.nix
		./modules/users.nix
		./modules/utils.nix
		./modules/virtualisation.nix
		./modules/Suckless.nix
		];	
  		};
	};
}
