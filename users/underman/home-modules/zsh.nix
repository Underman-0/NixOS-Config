{config, pkgs, home-manager, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      off = "poweroff";
      ga = "git add .";
      gp = "git push";
      gc = "git commit";
    };
    prezto = {
      enable = true;
      prompt.theme = "pure";
    };
  };
}