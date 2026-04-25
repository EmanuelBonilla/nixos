{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    lazygit
    ncspot
    kitty
    gh-copilot
  ];
}
