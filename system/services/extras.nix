{ config, pkgs, ... }:
{
  services.printing.enable = true;
  services.libinput.enable = true;
  security.rtkit.enable = true;
}
