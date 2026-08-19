{
  lib,
  hostVars,
  inputs,
  pkgs,
  ...
}:
let
  features = hostVars.features;
  has = f: builtins.elem f features;

  opencodePkgs = inputs.opencode-nix.packages.${pkgs.system};
in
{
  home.packages =
    with pkgs;
    [
      lazygit
      fd
      fzf
      ripgrep
      unzip
      github-copilot-cli
      claude-code
      opencodePkgs.opencode
      codegraph
      cursor-cli
      awscli2
    ]
    ++ lib.optionals (has "x11") [ xclip ]
    ++ lib.optionals (has "wayland") [ wl-clipboard ];
}
