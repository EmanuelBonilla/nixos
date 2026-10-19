{ ... }:
{
  time.timeZone = "America/Bogota";
  console.keyMap = "us";
  imports = [
    ./hardware.nix
    ../host-load.nix
    ./boot.nix
    ./network.nix
  ];
}
