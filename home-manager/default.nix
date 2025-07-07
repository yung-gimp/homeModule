{ pkgs, ... }:
{
  programs.home-manager.enable = true;
  home = {
    packages = [ pkgs.htop ];
    stateVersion = "24.11";
  };
  imports = [ ./hyprland ];
}
