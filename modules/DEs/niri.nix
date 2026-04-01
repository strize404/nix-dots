{ config, pkgs, ... }:

{
  programs.niri.enable = true;
  programs.dms-shell.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    quickshell
  ];
}
