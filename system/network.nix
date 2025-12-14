{ config, pkgs, ... }:
{
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = false;
  networking.networkmanager.enable = true;
  networking.hostName =
    let
      hostNameEnv = builtins.getEnv "HOSTNAME_TO_SET";
    in
    if hostNameEnv == "" then
      builtins.throw "Environment variable HOSTNAME_TO_SET is not set"
    else
      hostNameEnv;
}
