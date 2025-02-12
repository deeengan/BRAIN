{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = false;
    packages = with pkgs; [
      babelstone-han
      corefonts
      nerd-fonts.symbols-only
      # twitter-color-emoji
      # nerd-fonts.iosevka
      # nerd-fonts.victor-mono
    ];
  };
}
