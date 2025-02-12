{
  pkgs,
  lib,
  ...
}: {
  programs.nixvim.plugins.lint = {
    enable = true;

    # js / ts / nix
    lintersByFt = {
      css = [
        "stylelint"
      ];
      fish = [
        "fish"
      ];
      ledger = [
        "hledger"
      ];
      html = [
        "htmlhint"
      ];
      json = [
        "jsonlint"
      ];
      markdown = [
        "markdownlint"
      ];
      yaml = [
        "yamllint"
      ];
    };
    linters = {
      fish = {
        cmd = "${pkgs.fish}/bin/fish";
      };
      hledger = {
        # cmd = "${pkgs.hledger}/bin/hledger";
        cmd = lib.getExe pkgs.hledger;
      };
      htmlhint = {
        cmd = lib.getExe pkgs.htmlhint;
      };
      jsonlint = {
        cmd = lib.getExe pkgs.nodePackages_latest.jsonlint;
      };
      markdownlint = {
        cmd = lib.getExe pkgs.markdownlint-cli;
      };
      stylelint = {
        cmd = lib.getExe pkgs.stylelint;
      };
      yamllint = {
        cmd = lib.getExe pkgs.yamllint;
      };
    };
  };
}
