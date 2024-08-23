
{ config, lib, pkgs, ... }:

{

nixpkgs.config = {
	allowUnfree = true;
	allowBroken = true;
	allowUnsupportedSystem = true;
	#allowUnfreePredicate = pkg:builtins.elem (lib.getName pkg) [ "#nvidia-x11" ];
	permittedInsecurePackages = [
		"openssl-1.1.1w"
];
};

}
