{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    vlc
    thunderbird
    onlyoffice-desktopeditors
    brightnessctl
    playerctl
    obs-studio
    gimp
    imv
    qalculate-gtk
  ];

  services.copyq.enable = true;
}
