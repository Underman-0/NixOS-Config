{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    btop
    fastfetch
    git
    htop
    neovim
    tree
    vscodium
    wget
  ];
}
