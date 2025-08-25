{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    nixosConfigurations.T470 = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
        root = self;
      };
      modules = [
        ./hosts/T470.nix
        inputs.home-manager.nixosModules.default
      ];
    };
    homeConfigurations."underman" = inputs.home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [ ./users/underman/home.nix ];
    };
  };
}