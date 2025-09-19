# Import all program configurations
{ ... }:

{
  imports = [
    ./atuin.nix
    ./bat.nix
    ./btop.nix
    ./bun.nix
    ./eza.nix
    ./nixvim/default.nix
    ./zoxide.nix
    ./zsh.nix

    ./scripts/default.nix
  ];
}

