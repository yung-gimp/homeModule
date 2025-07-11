{
  home.persistence."/nix/persist/home/codman" = {
    directories = [
      "Documents"
      "Downloads"
      "Music"
      "Pictures"
      "Videos"
      ".mozilla"
    ];
    files = [ ];
    allowOther = false;
  };
}
