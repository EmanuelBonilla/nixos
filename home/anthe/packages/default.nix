{ config, pkgs, ... }:
{
  imports = [
    ./compilers.nix
    ./tools.nix
    ./coding.nix
  ];
}
