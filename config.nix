{pkgs, ...}: {
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  documentation.nixos.enable = false;

  environment = {
    systemPackages = with pkgs; [
    ];
  };

  hardware.i2c.enable = true;

  nix = {
    package = pkgs.nixVersions.latest;
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
      substituters = [
        "https://cache.nixos.org/"
      ];
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
    ];
  };

  programs = {
    fish.enable = true;
    hyprland.enable = true;
  };

  services = {
    flatpak.enable = true;
    # gnome.core-utilities.enable = false; # disables
    # printing.enable = false;
    # xserver = {
    #   enable = true; # X11 windowing
    #   desktopManager.gnome.enable = true;
    #   displayManager.gdm.enable = true;
    #   xkb = {
    #     layout = "us";
    #     variant = "";
    #   };
    #   excludePackages = [
    #     pkgs.xterm # disables
    #   ];
    # };
  };

  stylix = {
    autoEnable = true;
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

    homeManagerIntegration = {
      autoImport = true;
      followSystem = true;
    };

    image = pkgs.fetchurl {
      hash = "sha256-eErDPbvkFifZgDlu91z0SIVLJyCSHQDjlJYHYAape0o=";
      url = "https://cdn.esawebb.org/archives/images/large/weic2425c.jpg";
    };

    imageScalingMode = "tile";
    polarity = "dark";
    targets = {
      nixvim.transparentBackground = {
        main = true;
        signColumn = true;
      };
      qt.platform = "qtct";
    };
  };

  # do not ever touch unless required to by release notes
  system.stateVersion = "23.05";
}
