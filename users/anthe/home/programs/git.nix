{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Anthe";
        email = "eldiegoemanuel@gmail.com";
      };
      init.defaultBranch = "main";
      safe = {
        directory = "*";
      };
    };
  };
}
