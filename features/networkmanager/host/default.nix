{ lib, hostVars }:
{
  networking.networkmanager.enable = true;
  users.users.${hostVars.mainUser}.extraGroups = lib.mkAfter [ "networkmanager" ];
}
