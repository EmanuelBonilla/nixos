{ config, pkgs, ... }:
let
  vars = import ./vars.nix;
in
{
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = false;
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    Port 2222
    AllowUsers ${vars.mainUser}
    PermitEmptyPasswords no
    PermitRootLogin no
    PasswordAuthentication yes
    PubkeyAuthentication no
    AllowTcpForwarding yes
    MaxAuthTries 3
  '';
}
