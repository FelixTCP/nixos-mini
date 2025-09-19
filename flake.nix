{
  description = "Home Manager config with nixvim";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nixvim.url = "github:nix-community/nixvim";
    catppuccin.url = "github:catppuccin/nvim";
  };

  outputs = { self, nixpkgs, home-manager, nixvim, catppuccin, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      homeConfigurations.felix = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home/default.nix
          nixvim.homeModules.nixvim
          catppuccin.homeModules.catppuccin
        ];
      };
    };
}

