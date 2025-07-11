{ pkgs, inputs, ... }:
{
  home = {
    packages = [ pkgs.htop ];
    stateVersion = "24.11";
  };

  programs = {
    home-manager.enable = true;
    foot.enable = true;
    git.enable = true;
    rofi.enable = true;
    nvf = {
      enable = true;
      settings = {
        vim.vimAlias = true;
        vim.lsp.enable = true;
      };
    };
    firefox = {
      enable = true;
      profiles.default = {
        settings = {
          "extensions.autoDisableScopes" = 0;
        };
        extensions = {
          force = true;
          packages = with inputs.firefox-addons.packages.${pkgs.system}; [
            bitwarden
            darkreader
            ublock-origin
          ];
        };
        policies = {

        };
      };
    };
  };

  imports = [
    inputs.impermanence.homeManagerModules.impermanence
    inputs.nvf.homeManagerModules.default
    ./hyprland
    ./persist.nix
  ];
}
