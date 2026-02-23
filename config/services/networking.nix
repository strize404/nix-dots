{ config, pkgs, ... }:

{
  # Enable networking
  networking = {
    networkmanager.enable = true;
    firewall.enable = false;
    wireless.extraConfig = ''
      bgscan=""
    '';
  };

}
