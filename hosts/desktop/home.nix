{
  config,
  pkgs,
  inputs,
  ...
}:

{
  home.username = "strize";
  home.homeDirectory = "/home/strize";

  # You should not change this value
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    audacity
    obs-studio

    pixieditor
    krita
    gimp
    blender
    # godot
    # freecad
    # qgis
    
    kdePackages.kdenlive
    davinci-resolve

    #Adobe reimplimentation
    # nur.repos.Skyb0rg007.flimcraft
    # nur.repos.Skyb0rg007.lightcraft
    # nur.repos.Skyb0rg007.photocraft
    # nur.repos.Skyb0rg007.printcraft
    # nur.repos.Skyb0rg007.designcraft
    # nur.repos.Skyb0rg007.effectcraft
    # nur.repos.Skyb0rg007.vectorcraft

    beeper
    nur.repos.lonerOrz.helium
    #nur.repos.AusCyber.zen-browser
  ];

  nixpkgs.config.allowUnfree = true;

  home.file = {
  };

  imports = [
    inputs.zen-browser.homeModules.beta
    #inputs.zen-browser.homeModules.twilight
    #inputs.zen-browser.homeModules.twilight-official
  ];

  programs.zen-browser.enable = true;
  programs = {
    npm.enable = true;
    bun.enable = true;
    opencode.enable = true;
    # vscode.enable = true;
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
