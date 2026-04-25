{ config, pkgs, ... }:
{
  # MUST IMPLEMENT THIS
  # This file is the boot file for the host. Is required to configure the bootloader for this host
  #
  # EXAMPLE:
  # boot.loader.grub.enable = true;
  # boot.loader = {
  #   timeout = 0;
  #   grub = {
  #     enable = true;
  #     device = "/dev/sda";
  #   };
  # };
  # boot.initrd.systemd.enable = true;
}
