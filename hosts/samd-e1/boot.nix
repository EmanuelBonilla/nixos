{ ... }:
{
  boot.loader = {
    timeout = 0;
    grub = {
      enable = true;
      device = "/dev/sda";
    };
  };
  boot.initrd.systemd.enable = true;
  boot.plymouth = {
    enable = true;
    theme = "bgrt";
  };

  boot.kernelParams = [
    "quiet"
    "splash"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
    "loglevel=3"
  ];
}
