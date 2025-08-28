{config, pkgs, home-manager, ...}:

{
  programs.zsh = {
    enable = true;
    prezto = {
      enable = true;
      prompt.theme = "pure";
    };
  };
}