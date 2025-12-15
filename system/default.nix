{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./users.nix
    ./locale.nix
    ./network.nix
    ./extra.nix
  ];
}
