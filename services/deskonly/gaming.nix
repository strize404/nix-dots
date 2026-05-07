{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [
    lutris
  ];
  nixpkgs.overlays = [
    (final: prev: {
      openldap = prev.openldap.overrideAttrs (oldAttrs: {
        doCheck = false;
      });
    })
  ];
}
