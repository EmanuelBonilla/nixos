{ config, pkgs, ... }:
{
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = false;
  networking.hostName = "SAMD-E1";
}
