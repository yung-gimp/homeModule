{ pkgs, inputs, ... }:
{
  programs.home-manager.enable = true;
  home = {
    packages = [ pkgs.htop ];
    stateVersion = "24.11";
  };
  imports = [
    inputs.impermanence.homeManagerModules.impermanence
    ./hyprland
    ./persist.nix
  ];
}
