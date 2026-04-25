{
  hostVars,
  ...
}:
{
  imports = [
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = hostVars.mainUser;
}
