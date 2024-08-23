{pkgs, ...}:

{

networking = {
  nameservers = [ "127.0.0.1" "::1" ];
  # If using dhcpcd:
  dhcpcd.extraConfig = "nohook resolv.conf";
  # If using NetworkManager:
  networkmanager.enable = true;
  networkmanager.dns = "none";
};

}