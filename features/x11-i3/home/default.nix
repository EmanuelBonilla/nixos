{ pkgs, ... }:
{
  home.packages = with pkgs; [
    feh
    picom
  ];
}
