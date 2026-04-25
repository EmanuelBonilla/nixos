{ config, pkgs, ... }:
{
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    	GatewayPorts yes
  '';

  # If you want to allow some ports, you can specify them here. For example:
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
