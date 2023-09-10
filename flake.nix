{
  description = "Liberontissauri's NixOS flake";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      home-manager.url = "github:nix-community/home-manager";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{self, home-manager, nixpkgs}: 
  let 
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      lil-lib = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./modules/nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useUserPackages = true;
            home-manager.users.liberontissauri = import ./modules/home-manager/home.nix;
          }
        ];
      };
    };
  };
}