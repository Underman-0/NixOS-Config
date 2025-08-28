{config, pkgs, ...}:
{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/underman/NixOS-Config"; # sets NH_OS_FLAKE variable for you
  };
}