{ config, pkgs, ... }:

{
  home = {
    username = "root";
    homeDirectory = "/root";
    stateVersion = "24.05";
  };

  imports = [
    ./programs/default.nix
    ./languages/default.nix

    # further utilies
    ./utils.nix
  ];
}

