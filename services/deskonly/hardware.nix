{ config, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  hardware.firmware = with pkgs; [
    linux-firmware
  ];

  # Opengl / video hardware acceleration

  # hardware.graphics = {
  #   enable = true;
  #   enable32Bit = true;
  #   extraPackages = with pkgs; [
  #     libvdpau-va-gl
  #     intel-media-driver
  #     intel-vaapi-driver
  #     libva-vdpau-driver
  #     intel-compute-runtime-legacy1 # For Intel Gen 8, 9, 11
  #   ];
  # };

  # OpenCL support.
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = 
    let
      pkgs = import inputs.nixpkgs-c5ae371f1 {
        system = "x86_64-linux";
        config.allowUnfree = true;
      }; 
    in 
      [ 
        pkgs.intel-compute-runtime-legacy1 # Use the latest driver commit that worked with DaVinci Resolve.
      ];
  };
}
