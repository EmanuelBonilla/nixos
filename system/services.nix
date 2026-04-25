{ config, pkgs, ... }:
{
  services.printing.enable = true;
  services.libinput.enable = true;
  security.rtkit.enable = true;
  networking.networkmanager.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
}
