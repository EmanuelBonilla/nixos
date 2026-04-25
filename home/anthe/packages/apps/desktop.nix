{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    mpv
    dmenu
    firefox
  ];
}
