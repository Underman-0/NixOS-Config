{ config, pkgs, home-manager, plasma-manager, stylix, root, ... }:
# home-manager.users.underman.*
{
  home.stateVersion = "25.05";
  home.username = "underman";
  home.homeDirectory = "/home/underman";

  nixpkgs.config.allowUnfree = true;
  
  stylix.targets.alacritty.enable = true;

  home.packages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kcolorchooser
    vesktop
    ringracers
    osu-lazer-bin
    orca-slicer
    godot
    jetbrains.pycharm-community-bin
    winetricks
    wineWowPackages.stable
  ];

  imports = [
    ./home-modules/chromium.nix
    ./home-modules/firefox.nix
    ./home-modules/git.nix
    ./home-modules/nh.nix
    ./home-modules/plasma.nix
    ./home-modules/ssh.nix
    ./home-modules/zsh.nix
  ];
}