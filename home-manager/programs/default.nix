{
  imports = [
    ./firefox.nix
    ./nvf.nix
  ];
  programs = {
    home-manager.enable = true;
    foot.enable = true;
    git.enable = true;
    rofi.enable = true;
  };
}
