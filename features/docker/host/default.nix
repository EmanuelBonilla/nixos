{ hostVars, lib, ... }:
{
  virtualisation.docker.enable = true;
  users.users.${hostVars.mainUser}.extraGroups = lib.mkAfter [ "docker" ];
}
