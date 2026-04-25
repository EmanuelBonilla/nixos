{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    lazygit
    ncspot
    kitty
    github-copilot-cli
  ];
}
