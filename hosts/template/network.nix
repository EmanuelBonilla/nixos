{ config, pkgs, ... }:
{
  networking.firewall.enable = true;
  services.openssh.enable = true;

  # If you want to allow some ports, you can specify them here. For example:
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
