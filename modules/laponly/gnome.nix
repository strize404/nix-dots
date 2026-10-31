{ pkgs, ... }:

{
  # Enable the GNOME Display Manager
  services = {
    displayManager.gdm.enable = true;
  };

}
