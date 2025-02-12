{...}: {
  programs.nixvim.plugins.zk = {
    enable = true;
    settings = {
      picker = "fzf_lua";
      lsp.config = {
        cmd = ["zk" "lsp"];
        name = "zk";
      };

      lsp.autoAttach = {
        enabled = true;
        filetypes = ["markdown" "html" "css" "less" "js" "ts" "yaml"];
      };
    };
  };
}
