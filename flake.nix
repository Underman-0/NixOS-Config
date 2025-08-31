{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      plasma-manager,
      ...
    }:
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
        inputs.home-manager.nixosModules.home-manager {
          home-manager.sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
        }
      ];
    };
    homeConfigurations."underman" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; };

      modules = [
        inputs.plasma-manager.homeManagerModules.plasma-manager
        ./users/underman/home.nix
      ];
    };
  };
}