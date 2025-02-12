{
  pkgs,
  config,
  ...
}: {
  programs.password-store = {
    enable = true;
    package = pkgs.pass.withExtensions (
      exts:
        with exts; [
          pass-update
        ]
    );
    settings = {
      PASSWORD_STORE_DIR = "${config.home.homeDirectory}/.password-store/";
    };
  };
}
