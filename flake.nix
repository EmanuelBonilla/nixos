{
  description = "NixOs Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.system = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./configuration.nix

          (
            { pkgs, ... }:
            {
              nixpkgs.config.allowUnfree = true;

              environment.systemPackages = with pkgs; [
                neovim
                git
                gh
              ];
            }
          )

          home-manager.nixosModules.home-manager
          (
            { ... }:
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.users.anthe = import ./home/anthe/default.nix;
            }
          )
        ];
      };
    };
}
