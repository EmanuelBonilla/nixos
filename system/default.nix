{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./locale.nix
    ./services.nix
    ./extras.nix
    ./users
  ];
}
