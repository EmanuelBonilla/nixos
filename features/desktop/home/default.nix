{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    vlc
    dmenu
    ncspot
    mupen64plus
    firefox
    thunderbird
    onlyoffice-desktopeditors
    scrot
  ];

  services.copyq.enable = true;
}
