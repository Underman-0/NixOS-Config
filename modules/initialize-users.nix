{ config, home-manager, plasma-manager, pkgs, root, ... }:

{
  # initialize user(s) (base NixOS)
  users.users= {
    underman = import "${root}/users/underman/configuration.nix" {
      inherit pkgs config;
    };
  };
  # configure the user(s) using home-manager
  home-manager.users = {
    underman = import "${root}/users/underman/home.nix";
  };
}