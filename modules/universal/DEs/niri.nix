{ config, pkgs, ... }:

{
  programs.niri.enable = true;
  programs.dms-shell.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    quickshell
  ];

  # Greeter
  # services.displayManager.dms-greeter = {
  #   enable = true;
  #   compositor = {
  #     name = "niri"; # Required. Can be also "hyprland" or "sway"
  #     customConfig = ''
  #       # Optional custom compositor configuration
  #     '';
  #   };
  #
  #   # Sync your user's DankMaterialShell theme with the greeter. You'll probably want this
  #   configHome = "/home/strize";
  #
  #   # Custom config files for non-standard config locations
  #   configFiles = [
  #     "/home/strize/.config/DankMaterialShell/settings.json"
  #   ];
  #
  #   # Save the logs to a file
  #   logs = {
  #     save = true;
  #     path = "/tmp/dms-greeter.log";
  #   };
  #
  #   # Custom Quickshell Package
  #   quickshell.package = pkgs.quickshell;
  # };
}
