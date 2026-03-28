{ config, pkgs, ... }:

{

  # Enable CUPS to print documents.
  services.printing.enable = false;

  services.dbus.enable = true;

  # Camera kernel module
  hardware.facetimehd.enable = true;

}
