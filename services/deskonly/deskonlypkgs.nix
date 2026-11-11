{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ddcutil
    pavucontrol

    rustc
    cargo
  ];
}
