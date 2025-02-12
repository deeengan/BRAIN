{
  pkgs,
  lib,
  ...
}: {
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_no_formatters = true;
      notify_on_error = true;
      stop_after_first = true;

      format_on_save = {
        timeoutMs = 500;
        lspFallback = false;
      };

      # ledger
      formatters_by_ft = {
        # https://spec.commonmark.org/
        css = [
          "prettier"
        ];
        fish = [
          "fish"
        ];
        html = [
          "prettier"
        ];
        javascript = [
          "prettier"
        ];
        json = [
          "prettier"
        ];
        markdown = [
          "prettier"
        ];
        nix = [
          "alejandra"
        ];
        typescript = [
          "prettier"
        ];
        yaml = [
          "prettier"
        ];
      };

      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        fish = {
          command = "${pkgs.fish}/bin/fish_indent";
        };
        prettier = {
          command = lib.getExe pkgs.nodePackages_latest.prettier;
        };
      };
    };
  };
}
