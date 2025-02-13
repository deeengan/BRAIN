{...}: {
  programs.neovim.defaultEditor = true;

  programs.nixvim = {
    diagnostics = {
      virtual_text = false;
    };
    enable = true;
    plugins.web-devicons.enable = false;
    viAlias = true;
    vimAlias = true;
  };

  imports = [
    # general
    ./files.nix

    # visuals for the layout
    ./visual.nix
    ./writing.nix

    # visuals -- hues
    ./transparent.nix
    ./overrides.nix

    # plugins
    ./autocmds.nix
    ./blink.nix
    ./conform.nix
    ./csvview.nix
    ./cursorword.nix
    ./friendly-snippets.nix
    ./fugitive.nix
    ./fzf-lua.nix
    ./hop.nix
    ./ledger.nix
    ./lint.nix
    ./lsp.nix
    ./mini.nix # cursorword
    ./nvim-colorizer.nix
    ./oil.nix
    ./treesitter.nix
    ./undotree.nix
    # ./zk.nix
    # ./no-options.nix
    # quicker
    #./indent-blankline.nix
  ];

  # anything else
  programs.nixvim.extraConfigLua = ''

  '';
}
