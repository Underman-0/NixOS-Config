{ pkgs, inputs, ... }: 
{
  environment.systemPackages = with pkgs; [
    inputs.nix-alien.packages.x86_64-linux.nix-alien
    btop
    cava
    fastfetch
    git
    htop
    libreoffice
    mysql-workbench
    neovim
    tree
    vscodium
    wget
  ];
}
