{ pkgs, ... }:
{
  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
    # Basics
    stdenv.cc.cc.lib
    zlib
    openssl
    curl

    # Electron
    glib
    nss
    nspr
    atk
    at-spi2-atk
    at-spi2-core
    cups
    dbus
    expat
    libdrm
    libgbm
    libxkbcommon
    pango
    cairo
    alsa-lib
    libx11
    libxcomposite
    libxdamage
    libxext
    libxfixes
    libxrandr
    libxcb
    libxrender
    libxtst
    libxi
    mesa
    udev
    vulkan-loader

    # Fonts
    fontconfig
    freetype
    harfbuzz

    # gtk3
    gtk3

    glib
    nss
    nspr
    dbus
    atk
    cups
    libdrm
    pango
    cairo
    xorg.libX11
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXrandr
    mesa
    expat
  ];
}
