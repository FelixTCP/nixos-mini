{ config, pkgs, ... }:

{
  home = {
    username = "felix";
    homeDirectory = "/home/felix";
    stateVersion = "24.05";
  };

  programs.zsh.enable = true;
  programs.git.enable = true;

  # Import nixvim module
  imports = [ ./programs/default.nix ];

}

