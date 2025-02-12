{ ... }: {

  programs.pandoc.enable = true;
    programs.pandoc.defaults = { metadata = { author = "Dee Engan"; };

  };
}
