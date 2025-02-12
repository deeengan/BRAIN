{...}: {
  nix = {
    gc = {
      automatic = true;
      dates = "Mon 04:30:00";
      options = "--delete-older-than 5d";
      persistent = true;
      randomizedDelaySec = "500";
    };

    optimise = {
      automatic = true;
      dates = ["05:45"];
    };
  };
}
