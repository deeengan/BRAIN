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
    # ./starship.nix

    # utilities
    ./aerc.nix
    ./browsh.nix
    ./firefox.nix
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

    # fonts
    fontforge-gtk
    python312Full
    python312Packages.fonttools

    # fzf(-lua)
    broot
    eza
    fd
    file
    hexyl
    procs
    ripgrep

    # GPG
    pinentry

    # html && css && ts
    nodejs
    typescript

    # lang
    anki
    yt-dlp

    # life
    borgbackup
    hledger
    keepassxc
    remind
    signal-desktop
    ticker
    weather
    # zk

    # phys
    btop
    ddcutil
    neofetch
    wlr-randr # https://www.sven.de/dpi/

    # term
    alacritty

    # util
    keyd
    showmethekey
    unzip
    wl-clipboard
    zip

    # story
    inklecate

    # visual
    chafa
    feh
    hyprshot
    imagemagick
  ];
}
