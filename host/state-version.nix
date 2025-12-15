{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./services
    ./desktops
  ];
  system.stateVersion = "25.05";
}
