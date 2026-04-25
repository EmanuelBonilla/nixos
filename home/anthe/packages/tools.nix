{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    fd
    fzf
    ripgrep
    unzip
    brightnessctl
    xclip
  ];
}
