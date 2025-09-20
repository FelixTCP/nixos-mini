{ config, pkgs, ... }:

{
  targets.genericLinux.enable = true;
  manual.man.enable = false;
  programs.man.enable = false;

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

