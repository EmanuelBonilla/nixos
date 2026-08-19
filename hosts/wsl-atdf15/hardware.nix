{
  inputs,
  hostVars,
  ...
}:
{
  imports = [
    inputs.nixos-wsl.nixosModules.default
  ];

  wsl.enable = true;
  wsl.defaultUser = hostVars.mainUser;
}
