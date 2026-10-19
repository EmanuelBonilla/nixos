{
  systemStateVersion = "26.05";
  homeStateVersion = "26.05";
  hostName = "leno-idea3";
  mainUser = "anthe";
  features = [
    "services"
    "services/networkmanager"
    "services/graphics"
    "services/docker"
    "services/bluetooth"
    "services/printing"
    "services/avahi"
    "wayland"
    "wayland/niri"
    "desktop"
    "apps/zen-browser"
    "apps/nvlt"
    "app-image"
  ];
  users = [ "anthe" ];
}
