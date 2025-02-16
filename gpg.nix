{
  pkgs,
  config,
  ...
}: {
  # instead of sshKeys
  # home = {
  #   file = {
  #     ".gnupg/sshcontrol" = {
  #       force = true;
  #       text = ''
  #         # List of allowed ssh keys.  Only keys present in this file are used
  #         # in the SSH protocol.  The ssh-add tool may add new entries to this
  #         # file to enable them; you may also add them manually.  Comment
  #         # lines, like this one, as well as empty lines are ignored.  Lines do
  #         # have a certain length limit but this is not serious limitation as
  #         # the format of the entries is fixed and checked by gpg-agent. A
  #         # non-comment line starts with optional white spaces, followed by the
  #         # keygrip of the key given as 40 hex digits, optionally followed by a
  #         # caching TTL in seconds, and another optional field for arbitrary
  #         # flags.   Prepend the keygrip with an '!' mark to disable it.
  #         BDDD5343BAA57348A275945A566E229578AAA77F
  #         # END FILE
  #       '';
  #     };
  #   };
  # };

  programs.gpg = {
    enable = true;
    homedir = "${config.home.homeDirectory}/.gnupg";
    settings = {
      pinentry-mode = "ask";
    };
  };

  services.gpg-agent = {
    defaultCacheTtl = 28800;
    defaultCacheTtlSsh = 28800;

    enable = true;
    enableFishIntegration = true;
    enableSshSupport = true;

    maxCacheTtl = 28800;
    pinentryPackage = pkgs.pinentry-tty;

    sshKeys = [
      "BDDD5343BAA57348A275945A566E229578AAA77F"
    ];
    verbose = true;

    extraConfig = ''
    '';
  };
}
