# if the NONE groups can work, later move transparent.nix here
let
  none = {
    bg = "NONE";
    ctermbg = "NONE";
  };

  reverse = {
    link = "Special";
  };
in
  {...}: {
    programs.nixvim.highlightOverride = {
      PmenuSel = reverse;
    };
  }
