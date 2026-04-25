{ config, pkgs, ... }:
let
  vars = import ../vars.nix;
in
{
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
  };
  services.xserver.displayManager.lightdm = {
    enable = true;
    autoLogin = {
      enable = true;
      user = vars.mainUser;
    };
  };
  services.xserver.videoDrivers = [
    "amdgpu"
    "radeon"
  ];
}
