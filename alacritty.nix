{pkgs, ...}: {
  # https://alacritty.org/config-alacritty.html

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "none";
        padding = {
          x = 12;
        };
        dynamic_padding = true;
      };

      cursor = {
        style = "Beam";
      };

      keyboard.bindings = [
        # {
        #   key = "N";
        #   mods = "Control|Shift";
        #   action = "SpawnNewInstance";
        # }

        # {
        #   key = "L";
        #   mods = "Control|Shift";
        #   action = "Quit";
        # }
      ];

      terminal.shell = {
        program = "${pkgs.fish}/bin/fish";
      };
    };
  };
}
