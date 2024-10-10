{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

   sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs = {
        nixpkgs-stable.follows = "nixpkgs";
      };
    };
  };

  outputs = { self, nixpkgs, sops-nix, ... }@inputs: {

    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
     
      modules = [
        ./hosts/default/configuration.nix
        inputs.home-manager.nixosModules.default
    #    inputs.sops-nix.nixosModules.sops
      ];
    };
  };
}
