{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    btop
    fastfetch
    git
    htop
    libreoffice
    neovim
    tree
    vscodium
    wget
  ];
}
