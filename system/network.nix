{ config, pkgs, ... }:
{
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = false;
  networking.networkmanager.enable = true;
  networking.hostName = "SAMD-E1";
}
