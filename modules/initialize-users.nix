{ config, home-manager, pkgs, root, ... }:

{
  # configure the user(s) using home-manager
  home-manager.users = {
    underman = import "${root}/users/underman/home.nix";
  };
  # initialize user(s) (base NixOS)
  users.users= {
    underman = import "${root}/users/underman/configuration.nix" {
      inherit pkgs config;
    };
  };
}