{
  hostVars,
  lib,
  ...
}:
let
  features = hostVars.features or [ ];
  mkFeatureHostPath = f: ../features + "/${f}/host/default.nix";
  users = hostVars.users or [ ];
  mkUsersHostPath = u: ../users + "/${u}/host/default.nix";
  requirePath =
    p:
    assert lib.assertMsg (builtins.pathExists p) "Required module does not exist: ${toString p}";
    p;
in
{
  system.stateVersion = hostVars.systemStateVersion;
  networking.hostName = hostVars.hostName;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  imports =
    [ ]
    ++ builtins.concatMap (
      f:
      let
        p = mkFeatureHostPath f;
      in
      lib.optionals (builtins.pathExists p) [ p ]
    ) features
    ++ map (u: requirePath (mkUsersHostPath u)) users;
}
