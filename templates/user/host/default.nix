{ ... }:
{
  users.users.NEW_USER = {
    isNormalUser = true;
    createHome = true;
    home = "/home/NEW_USER";
    extraGroups = [
      "wheel"
    ];
  };
}
