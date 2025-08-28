{ config, pkgs, ... }:
# users.users.underman.
{
  isNormalUser = true;
  description = "Gabe Welsh";

  shell = pkgs.zsh;
  ignoreShellProgramCheck = true; # enabled in home configuration

  extraGroups = [ "networkmanager" "wheel" ];
  packages = with pkgs; [
    vesktop
    ringracers
    osu-lazer-bin
    godot
    jetbrains.pycharm-community-bin
  ];
  openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKpVEyR0otMDInllEUp2iJ2zL9lagzTQWux33SUGh72N underman@T470" #personal git
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJWHBiMmIXB+CgiDyJSN3HL2/sQGVBL4pXGk1B3ZN1Ra underman@T470" #school git
  ];
}
