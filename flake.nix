{
  description = "NixOs Configuration";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  outputs =
    {
      nixpkgs,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.system = nixpkgs.lib.nixosSystem {
        inherit system;
        inherit pkgs;
        modules = [
          ./configuration.nix
          (
            { config, pkgs, ... }:
            {
              environment.systemPackages = with pkgs; [
                neovim
                git
                gh
                home-manager
              ];
            }
          )
        ];
      };
    };
}
