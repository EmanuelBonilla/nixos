{ inputs, pkgs, ... }:
{
  home.packages = [
    inputs.nvlt.packages.${pkgs.stdenv.hostPlatform.system}.nvlt
  ];
}
