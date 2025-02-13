{pkgs, ...}: {
  programs.gpg = {
    enable = true;
    settings = {
      pinentry-mode = "loopback";
    };
  };
  services.gpg-agent = {
    defaultCacheTtl = 28800;
    enable = true;
    enableFishIntegration = true;
    enableSshSupport = true;
    maxCacheTtl = 28800;
    pinentryPackage = pkgs.pinentry-curses;
    # sshKeys = ["BDDD5343BAA57348A275945A566E229578AAA77F"];

    extraConfig = ''
      allow-loopback-pinentry
    '';
  };
}
