{
  systemStateVersion = "25.05";
  homeStateVersion = "25.05";
  hostName = "samd-e1";
  mainUser = "anthe";
  features = [
    "desktop"
    "x11"
    "x11/i3"
    "services"
    "services/networkmanager"
    "apps/falkon"
  ];
  users = [ "anthe" ];
}
