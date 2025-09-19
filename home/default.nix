{ config, pkgs, ... }:

{
  home = {
    username = "felix";
    homeDirectory = "/home/felix";
    stateVersion = "24.05";
  };

  imports = [ ./programs/default.nix ];
}

