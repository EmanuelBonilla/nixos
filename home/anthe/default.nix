{ config, pkgs, ... }:
{
  imports = [
    ./config.nix
    ./packages
    ./programs
  ];
}
