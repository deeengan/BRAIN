{...}: let
  colors = import ./earthsong.nix;
in {
  programs.kitty = {
    enable = true;
    # font = {
    #    size = 12;
    #    name = "Iosevka NFM";
    #  };
    shellIntegration.enableFishIntegration = true;
    settings = {
      # hide_window_decorations = true;
      # cursor_shape = "beam";
      # background_opacity = ".45";
      # mark1_foreground = "";
      # mark1_background = "";
      # mark2_foreground = "";
      # mark2_background = "";
      # mark3_foreground = "";
      # mark3_background = "";
      # background = colors.primary.background;
      # foreground = colors.primary.foreground;
      # color0 = colors.normal.black;
      # color8 = colors.bright.black;
      # color1 = colors.normal.red;
      # color9 = colors.bright.red;
      # color2 = colors.normal.green;
      # color10 = colors.bright.green;
      # color3 = colors.normal.yellow;
      # color11 = colors.bright.yellow;
      # color4 = colors.normal.blue;
      # color12 = colors.bright.blue;
      # color5 = colors.normal.magenta;
      # color13 = colors.bright.magenta;
      # color6 = colors.normal.cyan;
      # color14 = colors.bright.cyan;
    };
  };
}
# extraConfig = builtins.readFile ./kitty.conf;

