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
    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-alien = {
      url = "github:thiagokokada/nix-alien";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      plasma-manager,
      stylix,
      ...
    }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    specialArgs = { inherit inputs self; };
  in
  {
    nixosConfigurations.T470 = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = specialArgs;
      modules = [
        inputs.stylix.nixosModules.stylix
        inputs.home-manager.nixosModules.home-manager {
          home-manager.sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
        }
        ({ self, system, ... }: {
          environment.systemPackages = with self.inputs.nix-alien.packages.${system}; [
            nix-alien
          ];
          # Optional, needed for `nix-alien-ld`
          programs.nix-ld.enable = true;
        })
        ./hosts/T470.nix
      ];
    };
    homeConfigurations."underman" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; };

      modules = [
        inputs.stylix.homeModules.stylix
        inputs.plasma-manager.homeManagerModules.plasma-manager
        ./users/underman/home.nix
      ];
    };
  };
}