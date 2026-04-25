{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    nil
    nixpkgs-fmt
    lua-language-server
    yaml-language-server
    bash-language-server
    nodePackages.vscode-json-languageserver
    taplo
  ];
}
