{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    vlc
    dmenu
    ncspot
    mupen64plus
    clipmenu
    firefox
    thunderbird
    onlyoffice-desktopeditors
  ];
}
