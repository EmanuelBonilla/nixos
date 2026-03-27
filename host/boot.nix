{ config, pkgs, ... }:
{
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
  };
  boot.loader.timeout = 0;
  boot.plymouth = {
    enable = true;
    theme = "bgrt";
  };
  boot.initrd.systemd.enable = true;
  boot.kernelParams = [
    "quite"
    "splash"
    "rd.systemd.show_status=false"
  ];
}
