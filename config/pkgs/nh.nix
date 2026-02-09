{ pkg, ... }:

{
  programs.nh.enable = true;
  programs.nh.clean = {
    enable = true;
    dates = "weekly";
    extraArgs = "--keep 4 --keep-since 3d";
  };
}
