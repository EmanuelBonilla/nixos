{ ... }:
{
  imports = [
    ./hardware.nix
    ../host-load.nix
    ./boot.nix
    ./network.nix
    ./mic.nix
  ];
}
