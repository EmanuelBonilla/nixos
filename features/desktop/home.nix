{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kitty
    vlc
    thunderbird
    onlyoffice-desktopeditors
    brightnessctl
    playerctl
    proton-vpn
    gimp
    imv
    qalculate-gtk
    thunar
  ];

  services.copyq.enable = true;

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  xdg.desktopEntries.imv = {
    name = "imv";
    genericName = "Image Viewer";
    comment = "Lightweight image viewer for Wayland";
    exec = "imv %F";
    icon = "imv";
    terminal = false;
    categories = [
      "Graphics"
      "2DGraphics"
      "Viewer"
    ];
    mimeType = [
      "image/bmp"
      "image/gif"
      "image/jpeg"
      "image/jpg"
      "image/pjpeg"
      "image/png"
      "image/tiff"
      "image/webp"
      "image/avif"
      "image/heif"
    ];
  };
}
