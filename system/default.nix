{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./locale.nix
    ./extras.nix
    ./users
  ];
}
