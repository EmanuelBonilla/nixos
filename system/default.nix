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
    ./settings.nix
  ];
}
