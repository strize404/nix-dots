{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ddcutil
    pavucontrol
    wl-kbptr
  ];
}
