{config, pkgs, home-manager, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
    };
    prezto = {
      enable = true;
      prompt.theme = "pure";
    };
  };
}