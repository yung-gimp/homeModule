{ pkgs, ... }:
{
  home.packages = [ pkgs.htop ];
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
