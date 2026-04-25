{
  config,
  lib,
  pkgs,
  ...
}:
let
  vars = import ./vars.nix;
in
{
  system.stateVersion = vars.stateVersion;
  networking.hostName = vars.hostName;
  imports = [
    ./hardware.nix
    ../../system
    ./boot.nix
    ./network.nix
    ./desktops
  ];
}
