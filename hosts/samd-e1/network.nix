{
  hostVars,
  ...
}:
{
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = false;
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    Port 2222
    AllowUsers ${hostVars.mainUser}
    PermitEmptyPasswords no
    PermitRootLogin no
    PasswordAuthentication yes
    PubkeyAuthentication no
    AllowTcpForwarding yes
    MaxAuthTries 3
  '';
}
