{
  description = "first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-c5ae371f1.url = "github:nixos/nixpkgs/0c3fc1cd3494aa52a2c111d5f18a7689fd15ab83"; # Paste this nixpkgs commit to your Flake's inputs.

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nur,
      home-manager,
      zen-browser,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          nur.overlays.default
        ];
      };
    in
    {
      nixosConfigurations = {
        strize-desk = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/desktop/configuration.nix
          ];
        };

        strize-lap = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/laptop/configuration.nix
          ];
        };
      };

      homeConfigurations = {
        home-desk = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./hosts/desktop/home.nix
            ./home-config
          ];
          extraSpecialArgs = { inherit inputs; };
        };

        home-lap = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./hosts/laptop/home.nix
            ./home-config
          ];
          extraSpecialArgs = { inherit inputs; };
        };
      };
    };
}
