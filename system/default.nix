{config, pkgs, ...}:{
  imports = [
    ./boot.nix
    ./users.nix
    ./locale.nix
    ./network.nix
    ./extra.nix
    ./services
    ./desktops
  ];
}
