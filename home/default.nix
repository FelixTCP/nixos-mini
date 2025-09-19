{ config, pkgs, inputs, ... }:

{
  home = {
    username = "felix";
    homeDirectory = "/home/felix";
    stateVersion = "24.05";
  };

  programs.zsh.enable = true;
  programs.git.enable = true;

  # Import nixvim module
  imports = [
    inputs.nixvim.homeModules.nixvim
    inputs.catppuccin.homeModules.catppuccin
    ./programs/default.nix
  ];

}

