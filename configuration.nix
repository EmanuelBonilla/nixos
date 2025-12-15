{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./host/hardware-configuration.nix # Load from ur build
    ./host/boot.nix # Here write ur boot configuration
    ./host/network.nix # Define firewall ports etc and Hostname
    ./system
    ./host/state-version.nix # Here write ur nix version, HERE U CAN IMPORT MORE CONFIGS FROM HOST AVOID NOT PREVIUSLY
  ];
}
