{ config, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  hardware.firmware = with pkgs; [
    linux-firmware
  ];

  # Opengl / video hardware acceleration

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      libvdpau-va-gl
      intel-media-driver
      intel-vaapi-driver
      libva-vdpau-driver
    ];
  };
}
