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
  ];

  services.copyq.enable = true;
}
