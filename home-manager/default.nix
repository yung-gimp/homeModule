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
    nvf = {
      enable = true;
      vim.vimAlias = true;
      vim.lsp.enable = true;
    };
  };

  imports = [
    inputs.impermanence.homeManagerModules.impermanence
    inputs.nvf.homeManagerModules.default
    ./hyprland
    ./persist.nix
  ];
}
