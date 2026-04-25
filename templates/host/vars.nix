{
  # System state version is used to determine which version of the system configuration to use. This is useful for sharing common configuration across multiple hosts that may be running different versions of NixOS.

  systemStateVersion = "NIXOS_VERSION";
  # Home state version is used to determine which version of the home configuration to use. This is useful for sharing common configuration across multiple hosts that may be running different versions of NixOS.
  homeStateVersion = "NIXOS_VERSION";

  # Hostname is used to set the hostname of the system. This is useful for sharing common configuration across multiple hosts that may have different hostnames.
  hostName = "NIXOS_HOSTNAME";
  mainUser = "MAIN_USER";
  # Features are used to conditionally import host modules from the features directory. This is useful for sharing common configuration across multiple hosts.
  features = [
    "desktop"
    "x11-i3"
  ];

  # Users to load from the users directory. This is useful for sharing common configuration across multiple hosts that may have different users.
  users = [ "MAIN_USER" ];
}
