{config, pkgs, ...}:{
  imports = [
    ./extras.nix
    ./openssh.nix
    ./pipewire.nix
  ];
}
