{ ... }:
{
  home.username = "NEW_USER";
  home.homeDirectory = "/home/NEW_USER";
  imports = [
    ./../../user-load.nix
  ];
}
