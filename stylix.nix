{pkgs, ...}: {
  stylix = {
    autoEnable = true;
    enable = true;
    base16Scheme = {
      # https://github.com/dracula/base16-dracula-scheme/pull/16
      base00 = "#282a36";
      base01 = "#3a3c4e";
      base02 = "#44475a";
      base03 = "#6272a4";
      base04 = "#62d6e8";
      base05 = "#f8f8f2";
      base06 = "#f1f2f8";
      base07 = "#f7f7fb";
      base08 = "#ff5555";
      base09 = "#ffb86c";
      base0A = "#f1fa8c";
      base0B = "#50fa7b";
      base0C = "#8be9fd";
      base0D = "#bd93f9";
      base0E = "#ff79c6";
      base0F = "#00f769";
    };

    cursor = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };

    fonts = {
      emoji = {
        name = "Twitter Color Emoji";
        package = pkgs.twitter-color-emoji;
      };

      monospace = {
        name = "Lilex Nerd Font";
        package = pkgs.nerd-fonts.lilex;
      };

      sizes = {
        applications = 12;
        desktop = 12;
        popups = 12;
        terminal = 12;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.whitesur-icon-theme.override {
        alternativeIcons = true;
        boldPanelIcons = true;
      };
      dark = "WhiteSur-dark";
      light = "WhiteSur-light";
    };

    image = pkgs.fetchurl {
      hash = "sha256-eErDPbvkFifZgDlu91z0SIVLJyCSHQDjlJYHYAape0o=";
      url = "https://cdn.esawebb.org/archives/images/large/weic2425c.jpg";
    };

    imageScalingMode = "tile";
    polarity = "dark";
    opacity = {
      applications = 0.7;
      desktop = 0.7;
      popups = 0.7;
      terminal = 0.7;
    };

    targets = {
      fzf.enable = false;
      neovim.transparentBackground = {
        main = true;
        signColumn = true;
      };
      nixvim.transparentBackground = {
        main = true;
        signColumn = true;
      };
      qt.platform = "qtct";
    };
  };
}
