{ pkgs, ... }:
{
  imports = [
    ./hardware.nix
    ../host-load.nix
    ./boot.nix
    ./network.nix
  ];
  hardware.firmware = [
    (pkgs.runCommand "hda-jack-retask" { } ''
      mkdir -p $out/lib/firmware
      cat > $out/lib/firmware/hda-jack-retask.fw <<'EOF'
      [codec]
      0x10ec0294 0x104316e2 0

      [pincfg]
      0x19 0x03a11020
      EOF
    '')
  ];

  boot.extraModprobeConfig = ''
    options snd-hda-intel patch=,hda-jack-retask.fw
  '';
}
