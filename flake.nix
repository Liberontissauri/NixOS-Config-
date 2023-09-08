{
  description = "Liberontissauri's NixOS flake";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  };

  outputs = {self, nixpkgs}: 
  let 
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./modules/nixos/configuration.nix
        ];
      };
    };
  };
}