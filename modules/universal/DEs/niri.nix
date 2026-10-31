{ config, pkgs, ... }:

{
  programs.niri.enable = true;
  programs.dux-shell.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    quickshell
  ];

  # Greeter
  # services.displayManager.dux-greeter = {
  #   enable = true;
  #   compositor = {
  #     name = "niri"; # Required. Can be also "hyprland" or "sway"
  #   };
  #
  #   # Sync your user's DankMaterialShell theme with the greeter. You'll probably want this
  #   configHome = "/home/strize";
  #
  #   # Custom config files for non-standard config locations
  #   configFiles = [
  #     "/home/strize/.config/dms/settings.json"
  #   ];
  #
  #   # Save the logs to a file
  #   logs = {
  #     save = true;
  #     path = "/tmp/dms-greeter.log";
  #   };
  # };
}
