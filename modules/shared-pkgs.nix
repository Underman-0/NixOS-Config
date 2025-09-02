{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
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
