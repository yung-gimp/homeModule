{ pkgs, ... }:
{
  home.packages = [ pkgs.htop ];
  programs.home-manager.enable = true;
}
