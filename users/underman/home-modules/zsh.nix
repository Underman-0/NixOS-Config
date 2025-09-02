{config, pkgs, home-manager, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      "ll" = "ls -l";
      ".." = "cd ..";
      "off" = "poweroff";
      "ga" = "git add .";
      "gp" = "git push";
      "gc" = "git commit";
      "nos" = "nh os switch";
      "nosd" = "nh os switch --dry";
      "nhs" = "nh home switch";
      "sysup" = "nh os switch --update";
    };
    prezto = {
      enable = true;
      prompt.theme = "pure";
    };
  };
}