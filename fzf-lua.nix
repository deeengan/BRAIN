{...}: {
  programs.nixvim.plugins.fzf-lua = {
    enable = true;
    settings = {
      cwd = "~";
      fzf_colors = true;
      buffers = {
        formatter = "path.filename_first";
      };

      keymap = {
        builtin = {
          "<c-b>" = "preview-page-up";
          "<c-e>" = "preview-page-down";
        };

        fzf = {
          "ctrl-b" = "preview-page-up";
          "ctrl-e" = "preview-page-down";
          "ctrl-h" = "half-page-up";
          "ctrl-l" = "half-page-down";
          "ctrl-q" = "select-all+select";
          "ctrl-x" = "jump";
        };
      };

      previewers = {
        builtin = {
          extensions = {
            "png" = ["chafa"];
            "jpg" = ["chafa"];
            "jpeg" = ["chafa"];
            "gif" = ["chafa"];
          };
        };
      };

      winopts = {
        backdrop = 0;
        border = "single";
        treesitter = true;
        preview = {
          default = "builtin";
          border = "border";
          layout = "vertical";
          vertical = "up:65%";
          scrollbar = "float";
        };
      };
    };
  };
}
