{ config, pkgs, home-manager, root, ... }:
{
  home.stateVersion = "25.05";
  home.username = "underman";
  home.homeDirectory = "/home/underman";

  programs.zsh.enable = true;

  services.ssh-agent.enable = true;
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
  };

  programs.zsh.prezto = {
    enable = true;
    prompt.theme = "pure";
  };
  programs.home-manager.enable = true;
  programs.firefox.enable = true;
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/underman/NixOS-Config"; # sets NH_OS_FLAKE variable for you
  };
  programs.chromium.enable = true;
  programs.git = {
    enable = true;
    extraConfig = {
      init.defaultBranch = "main";
      user.email = "gjw4492@gmail.com";
      user.name = "Underman-0";
    };
  };
}