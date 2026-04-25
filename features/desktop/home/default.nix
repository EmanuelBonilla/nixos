{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    mpv
    dmenu
    ncspot
    mupen64plus
    clipmenu
    firefox
    onlyoffice-desktopeditors
  ];
}
