{ config, pkgs, ... }:
{
  virtualisation.docker.enable = true;
  networking.networkmanager.enable = true;
}
