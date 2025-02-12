{pkgs, ...}: {
  programs.gpg = {
    enable = true;
    settings = {
      pinentry-mode = "loopback";
    };
  };
  services.gpg-agent = {
    enable = true;
    enableFishIntegration = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSshSupport = true;
    maxCacheTtl = 28800;
    defaultCacheTtl = 28800;
    extraConfig = ''
      allow-loopback-pinentry
    '';
  };
}
