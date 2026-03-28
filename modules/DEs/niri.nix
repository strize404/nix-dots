{ config, pkgs, ... }:

{
  programs.niri.enable = true;
  programs.dms-shell.enable = true;
  programs.dsearch.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    quickshell
  ];
}
