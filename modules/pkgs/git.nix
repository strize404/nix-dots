{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    config = {
      user.name = "strize";
      user.email = "hi@strize.dev";
    };
  };
}
