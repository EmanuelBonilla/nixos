{
  ...
}:
{
  time.timeZone = "America/Bogota";
  console.keyMap = "us";
  imports = [
    ./hardware.nix
    ../host-load.nix
    ./network.nix
  ];
}
