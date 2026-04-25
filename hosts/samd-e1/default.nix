{
  config,
  hostVars,
  lib,
  pkgs,
  ...
}:
let
  features = hostVars.features or [ ];
  mkFeatureHostPath = f: ../../features + "/${f}/host/default.nix";
in
{
  system.stateVersion = hostVars.systemStateVersion;
  networking.hostName = hostVars.hostName;
  imports = [
    ./hardware.nix
    ../../system
    ./boot.nix
    ./network.nix
    ./desktops
  ]
  ++ builtins.concatMap (
    f:
    let
      p = mkFeatureHostPath f;
    in
    lib.optionals (builtins.pathExists p) [ p ]
  ) features;
}
