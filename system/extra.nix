{ config, pkgs, ... }:
{
  virtualisation.docker.enable = true;
  nixpkgs.config = {
    allowUnfree = true;
  };
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
