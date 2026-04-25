{
  lib,
  hostVars,
  ...
}:
let
  features = hostVars.features or [ ];
  mkFeatureHomePath = f: ../../features + "/${f}/home/default.nix";
in
{
  imports = [
    ./config.nix
    ./packages
    ./programs
  ]
  ++ builtins.concatMap (
    f:
    let
      p = mkFeatureHomePath f;
    in
    lib.optionals (builtins.pathExists p) [ p ]
  ) features;
}
