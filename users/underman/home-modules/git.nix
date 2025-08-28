{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      init.defaultBranch = "main";
      user.email = "gjw4492@gmail.com";
      user.name = "Underman-0";
    };
  };
}
