{ inputs, pkgs, ... }:
let
  pkgs25 = import inputs.nixos25_05 {
    system = pkgs.system;
    config.allowUnfree = true;
  };
in
{
  home.packages = [
    pkgs25.libsForQt5.falkon
  ];
}
