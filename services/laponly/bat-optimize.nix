{ config, pkgs, ... }:

{
  #Zram
  zramSwap = {
    enable = true;
    priority = 100;
    algorithm = "lz4";
    memoryPercent = 50;
  };

  boot.kernel.sysctl."vm.swappiness" = 160;

  #controls fan to keep temp low
  services.mbpfan.enable = true;
  services.mbpfan.aggressive = true;

  #increase battery life i think
  services = {
    power-profiles-daemon.enable = false;
    thermald.enable = true;
    upower.enable = true;
  };

  powerManagement.powertop.enable = true;

  services.tlp = {
    enable = true;
    settings = {
      # CPU
      CPU_SCALING_GOVERNOR_ON_AC = "schedutil";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance"; # AC: decent perf
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power"; # BAT: low power

      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;

      # Intel GPU on BAT

      INTEL_GPU_MAX_FREQ_ON_BAT = 600;
      INTEL_GPU_BOOST_FREQ_ON_BAT = 900;

      # PCIe
      RUNTIME_PM_ON_AC = "auto";
      RUNTIME_PM_ON_BAT = "auto";

      PCIE_ASPM_ON_AC = "default";
      PCIE_ASPM_ON_BAT = "powersave";

    };
  };
}
