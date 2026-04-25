{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./extras.nix
    ./openssh.nix
    ./pipewire.nix
    ./network-manager.nix
  ];
}
