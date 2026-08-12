{ config, pkgs, ... } :

{
  services.gvfs.enable = true;

  services.udisks2.enable = true;
}

#NOT need if using Gnome
