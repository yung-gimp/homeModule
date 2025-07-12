{ inputs, pkgs, ... }:

{
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
    };
  };
}
