{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    lazygit
    gh-copilot
    mupen64plus
    ncspot
  ];
}
