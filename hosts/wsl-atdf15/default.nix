{
  hostVars,
  lib,
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
    ./hardware-configuration.nix
    ../../system
    ./network.nix
  ]
  ++ builtins.concatMap (
    f:
    let
      p = mkFeatureHostPath f;
    in
    lib.optionals (builtins.pathExists p) [ p ]
  ) features;

}
