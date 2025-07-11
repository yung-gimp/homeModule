{
  home.persistence."/nix/persist/home/codman" = {
    directories = [
      "Documents"
      "Downloads"
      "Music"
      "Pictures"
      "Videos"
    ];
    files = [ ];
    allowOther = false;
  };
}
