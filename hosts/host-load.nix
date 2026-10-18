{
  hostVars,
  lib,
  ...
}:
let
  features = hostVars.features or [ ];
  mkFeatureHostPath = f: ../features + "/${f}/host.nix";
  users = hostVars.users or [ ];
  mkUsersHostPath = u: ../users + "/${u}/host/default.nix";
  requirePath =
    p:
    assert lib.assertMsg (builtins.pathExists p) "Required module does not exist: ${toString p}";
    p;
in
{
  console.keyMap = "us";
  time.timeZone = "America/Bogota";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_CO.UTF-8";
    LC_IDENTIFICATION = "es_CO.UTF-8";
    LC_MEASUREMENT = "es_CO.UTF-8";
    LC_MONETARY = "es_CO.UTF-8";
    LC_NAME = "es_CO.UTF-8";
    LC_NUMERIC = "es_CO.UTF-8";
    LC_PAPER = "es_CO.UTF-8";
    LC_TELEPHONE = "es_CO.UTF-8";
    LC_TIME = "es_CO.UTF-8";
  };
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
