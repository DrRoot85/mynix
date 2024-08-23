{inputs, pkgs, ...}:

{

	programs.hyprland = {
		enable = true;
		package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
	
};

	environment.sessionVariables.NIXOS_OZONE_WL = "1";
  	environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

}
