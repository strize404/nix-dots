{ config, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  hardware.firmware = with pkgs; [
    firmwareLinuxNonfree
  ];

  # Opengl / video hardware acceleration
  nixpkgs.config = {
    allowUnfree = true;
  };

  nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-media-driver
    ];
  };
}
