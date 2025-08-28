{ config, pkgs, home-manager, root, ... }:
# home-manager.users.underman.*
let
  root = ./.;
in {
  home.stateVersion = "25.05";
  home.username = "underman";
  home.homeDirectory = "/home/underman";

  imports = [
    ./home-modules/chromium.nix
    ./home-modules/firefox.nix
    ./home-modules/git.nix
    ./home-modules/nh.nix
    ./home-modules/ssh.nix
    ./home-modules/zsh.nix
  ];
}