{ ... }:
{
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
  };
  services.xserver.displayManager.lightdm = {
    enable = true;
    autoLogin = {
      enable = true;
      user = "anthe";
    };
  };
  services.xserver.videoDrivers = [
    "amdgpu"
    "radeon"
  ];
}
