{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    nil
    nixpkgs-fmt
    lua-language-server
    yaml-language-server
    bash-language-server
    vscode-json-languageserver
    taplo
  ];
}
