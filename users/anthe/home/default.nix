{ ... }:
{
  home.username = "anthe";
  home.homeDirectory = "/home/anthe";
  imports = [
    ./../../user-load.nix
    ./packages
    ./programs
  ];
}
