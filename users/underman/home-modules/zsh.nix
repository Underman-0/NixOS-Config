{config, pkgs, home-manager, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      off = "poweroff";
      
    };
    prezto = {
      enable = true;
      prompt.theme = "pure";
    };
  };
}