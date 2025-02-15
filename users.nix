{pkgs, ...}: {
  users = {
    users.deeengan = {
      isNormalUser = true;
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.fish;
    };
  };

  nix.settings.trusted-users = [
    "root"
    "deeengan"
  ];
}
