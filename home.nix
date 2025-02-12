{pkgs, ...}: {
  # https://github.com/poetaman/arttime

  programs.home-manager.enable = true;
  home = {
    homeDirectory = "/home/deeengan";
    stateVersion = "23.05"; # can be as such
    username = "deeengan";
  };

  imports = [
    # aesthetics && switches
    ./hyprland.nix
    ./stylix.nix

    # reading && writing && publishing
    ./bat.nix
    ./fcitx5.nix
    ./git.nix
    ./neovim.nix
    ./sioyek.nix

    # terminal
    # ./kitty.nix
    ./alacritty.nix
    ./fish.nix
    ./fzf.nix
    ./starship.nix

    # utilities
    ./aerc.nix
    ./browsh.nix
    ./gpg.nix
    ./ncpamixer.nix
    ./pandoc.nix
    ./pass.nix
  ];

  home.packages = with pkgs; [
    # audio
    ffmpeg-full
    mplayer
    ncpamixer
    reaper

    # brow
    firefox

    # fonts
    fontforge-gtk
    python312Full
    python312Packages.fonttools

    # fzf(-lua)
    ripgrep
    fd

    # GPG
    pinentry

    # html && css && ts
    nodejs
    typescript

    # lang
    anki
    binserve
    yt-dlp

    # life
    keepassxc
    hledger
    remind
    signal-desktop
    ticker
    weather
    zk

    # phys
    btop
    ddcutil
    neofetch
    wlr-randr # https://www.sven.de/dpi/

    # term
    alacritty

    # util
    fuzzel
    nautilus
    showmethekey
    unzip
    wl-clipboard
    zip
    keyd

    # story
    inklecate

    # visual
    chafa
    feh
    hyprshot
    imagemagick
  ];
}
