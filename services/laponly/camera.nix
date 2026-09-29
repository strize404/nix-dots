{ config, pkgs, ... }:

{

  services.dbus.enable = true;

  # Camera kernel module
  hardware.facetimehd.enable = true;

}
