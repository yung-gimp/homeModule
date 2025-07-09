{ pkgs, inputs, ... }:
{
  home = {
    packages = [ pkgs.htop ];
    stateVersion = "24.11";
  }; 

  programs = {
    home-manager.enable = true;
    firefox.enable = true;
    foot.enable = true;
    git.enable = true;
    neovim.enable = true;
    rofi.enable = true;
  };

  imports = [
    inputs.impermanence.homeManagerModules.impermanence
    ./hyprland
    ./persist.nix
  ];
}
