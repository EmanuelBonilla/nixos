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
  ];
}
