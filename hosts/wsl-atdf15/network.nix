{ hostVars, ... }:
{
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    Port 2222
    AllowUsers ${hostVars.mainUser}
    GatewayPorts yes
    PermitRootLogin no
    PubkeyAuthentication no
    AllowTcpForwarding yes
    MaxAuthTries 3
  '';

  # If you want to allow some ports, you can specify them here. For example:
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
