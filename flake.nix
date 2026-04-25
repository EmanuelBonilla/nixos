{
  description = "NixOs Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixos25_05.url = "github:nixos/nixpkgs?ref=nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";

      mkHost =
        { hostName }:
        let
          hostDir = ./hosts/${hostName};
          hostVars = import (hostDir + "/vars.nix");
        in
        nixpkgs.lib.nixosSystem {
          inherit system;

          specialArgs = { inherit inputs hostVars; };

          modules = [
            (import (hostDir + "/default.nix"))

            (
              { pkgs, ... }:
              {
                nixpkgs.config.allowUnfree = true;
                environment.systemPackages = with pkgs; [
                  neovim
                  git
                  gh
                  cargo-make
                ];
              }
            )

            home-manager.nixosModules.home-manager
            (
              { ... }:
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.backupFileExtension = "bak";
                home-manager.extraSpecialArgs = { inherit inputs hostVars; };
                home-manager.users.anthe = import ./home/anthe/default.nix;
              }
            )
          ];
        };
    in
    {
      nixosConfigurations = {
        "wsl-atdf15" = mkHost { hostName = "wsl-atdf15"; };
        "samd-e1" = mkHost { hostName = "samd-e1"; };
        # template = mkHost { hostName = "template"; };
      };
    };
}
