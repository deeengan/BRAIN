{...}: {
  programs.nixvim.plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      win_options = {
        cursorcolumn = true;
        signcolumn = "no";
      };
    };
  };
}
