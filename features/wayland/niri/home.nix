{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fuzzel
    swaybg
    waybar
    swaylock
    eww
  ];
}
