{ config, pkgs, ... }:
{
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    Port 2222
    AllowUsers anthe
    PermitEmptyPasswords no
    PermitRootLogin no
    PasswordAuthentication yes
    PubkeyAuthentication no
    AllowTcpForwarding yes
    MaxAuthTries 3
  '';
}
