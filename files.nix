{...}: {
  # files
  programs.nixvim.opts = {
    filetype = "on";
    autoread = true;
    completeopt = ["menu" "menuone" "noselect"];

    # backup
    backup = true;
    backupdir = "/home/deeengan/.cache/nvim-backups/";
    backupcopy = "yes";
    writebackup = true;

    # swap
    swapfile = false;

    # undo
    undofile = true;
    undodir = "/home/deeengan/.cache/undodir/";
    undolevels = 1000;
    undoreload = 10000;
  };

  # ftplugin, custom file

  programs.nixvim.files."ftdetect/ink.lua".autoCmd = [
    {
      event = ["BufRead" "BufNewFile"];
      pattern = ["*.ink"];
      command = "set ft=ink";
    }
  ];
}
