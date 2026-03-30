{ pkgs, ... }:

{
  programs.firefox.enable = false;

  # Enable running of non-nix apps
  programs.nix-ld.enable = true;

  programs = {
    starship.enable = true;
    zoxide.enable = true;
    yazi.enable = true;
  };

  programs.gpu-screen-recorder.enable = true;
  programs.localsend.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    atuin
    lazygit
    eza
    fd
    fzf
    ripgrep
    bat
    btop
    systemctl-tui
    fastfetch
    gcc

    statix
    nil
    nix-search-tv

    obsidian
    ghostty
    qbittorrent

    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono

    gnome-tweaks
    adw-gtk3 # use command gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    evince # document viewer
    nautilus # gnome default file manager
    file-roller # unzip
    baobab # analyse disk usage in gnome env
    loupe # image viewer
    showtime # video player
  ];
}
