{
  description = "NixOs SAM-E1 Configuration";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  inputs.nixos25_05.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  outputs =
    {
      nixpkgs,
      nixos25_05,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs25 = import nixos25_05 { inherit system; };
    in
    {
      nixosConfigurations.SAMD-E1 = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          (
            { config, pkgs, ... }:
            {
              environment.systemPackages = with pkgs; [
                mpv
                brightnessctl
                neovim
                git
                lazygit
                gh
                kitty
                docker
                dmenu
                clipmenu
                xclip
                feh
                fd
                fzf
                ripgrep
                i3blocks
                unzip
                nodejs
                gcc
                picom
                ncspot
                discordo
                scrot
                pkgs25.libsForQt5.falkon
                firefox
                nil
                nixpkgs-fmt
                lua-language-server
                yaml-language-server
                bash-language-server
                nodePackages.vscode-json-languageserver
                kmscon
                tmux
                mupen64plus
                onlyoffice-desktopeditors
                home-manager
              ];
            }
          )
        ];
      };
    };
}
