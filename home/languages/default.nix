# Import all language configurations
{ pkgs, ... }: {
  imports = [ ./lua.nix ./nix.nix ./python.nix ./angular.nix ./java.nix ];
}

