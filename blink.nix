{...}: {
  programs.nixvim.plugins.blink-cmp = {
    enable = true;
    settings = {
      #windows.documentation = {
      #  auto_show = true;
      #  treesitter_highlighting = true;
      #};
      keymap = {
        preset = "default";
        "<Enter>" = [
          "select_and_accept"
          "fallback"
        ];
        "<Tab>" = [
          "select_next"
          "fallback"
        ];
        "<S-Tab>" = [
          "select_prev"
          "fallback"
        ];
        "<C-space>" = [
          "show"
          "show_documentation"
          "hide_documentation"
          "fallback"
        ];
      };
      sources = {
        default = [
          "buffer"
          "lsp"
          "path"
          "snippets"
        ];
        providers = {
          buffer.score_offset = -7;
          lsp.fallbacks = [];
        };
        cmdline = [];
      };
      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
            semantic_token_resolution.enabled = false;
          };
        };
        documentation.auto_show = true;
      };
      appearance = {
        use_nvim_cmp_as_default = false;
        nerd_font_variant = "normal";
      };
      signature.enabled = true;
    };
  };
}
