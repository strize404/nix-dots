{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "strize";
    dataDir = "/home/strize/Sync"; # Default folder for new synced folders
    configDir = "/home/strize/.config/syncthing"; # Folder for Syncthing's settings and keys

  };
}
