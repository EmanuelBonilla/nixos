{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    fuzzel
    swaybg
    waybar
    swaylock
    eww
    inputs.niri-float-sticky.packages.${pkgs.system}.default
  ];
}
