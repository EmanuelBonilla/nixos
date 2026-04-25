{ ... }:
{
  users.users.anthe = {
    isNormalUser = true;
    createHome = true;
    home = "/home/anthe";
    extraGroups = [
      "wheel"
    ];
  };
}
