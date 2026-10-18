{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    xwayland-satellite
  ];
}
