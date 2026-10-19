{
  # System state version is used to determine which version of the system configuration to use. This is useful for sharing common configuration across multiple hosts that may be running different versions of NixOS.

  systemStateVersion = "26.05";
  # Home state version is used to determine which version of the home configuration to use. This is useful for sharing common configuration across multiple hosts that may be running different versions of NixOS.
  homeStateVersion = "26.05";

  # Hostname is used to set the hostname of the system. This is useful for sharing common configuration across multiple hosts that may have different hostnames.
  hostName = "atdf15";
  mainUser = "anthe";
  # Features are used to conditionally import host modules from the features directory. This is useful for sharing common configuration across multiple hosts.
  features = [
    "services"
    "services/docker"
    "services/graphics"
    "services/bluetooth"
    "services/pipewire"
    "services/networkmanager"
    "nvidia-integrated"
    "wayland"
    "wayland/niri"
    "desktop"
    "apps/nvlt"
    "apps/steam"
    "apps/zen-browser"
    "flatpak"
  ];
  # Nvidia Drivers only for feature services/nvidia
  nvidiaDrivers = {
    integratedKind = "intel";
    integratedBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
  };

  # Users to load from the users directory. This is useful for sharing common configuration across multiple hosts that may have different users.
  users = [ "anthe" ];
}
