{ config, pkgs, ... }:
{
  imports = [
    ./desktop.nix
    ./terminal.nix
  ];
}
