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
  system.stateVersion = vars.systemStateVersion;
  networking.hostName = vars.hostName;
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ../../system
    ./network.nix
  ];
}
