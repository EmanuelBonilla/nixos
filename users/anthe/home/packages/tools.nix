{
  lib,
  hostVars,
  pkgs,
  ...
}:
let
  features = hostVars.features;
  has = f: builtins.elem f features;
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
    ]
    ++ lib.optionals (has "x11") [ xclip ]
    ++ lib.optionals (has "wayland") [ wl-clipboard ];
}
