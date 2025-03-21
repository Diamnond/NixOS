{
  description = "Nixos config flake";

  inputs = {
    # Official nixpkgs source unstable branch
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager source
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
  {

    # use "nixos", or your hostname as the name of the configuration
    # it's a better practice than "default" shown in the video
    nixosConfigurations = {
      default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos01/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };

      nixos01 = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos01/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };

      nixos02 = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos02/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };
      
      nixos04 = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos04/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };
    };
  };
}
