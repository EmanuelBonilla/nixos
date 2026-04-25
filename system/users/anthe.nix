{ config, pkgs, ... }:
{
  users.users.anthe = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "docker"
    ];
  };
}
