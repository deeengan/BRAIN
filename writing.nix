{...}: {
  # keys, spacebar " "
  programs.nixvim.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  # basic
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>bb";
      action = ":e #<CR>";
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = ":bd<CR>";
    }

    {
      mode = "n";
      key = "<leader>bn";
      action = ":bn<CR>";
    }

    {
      mode = "n";
      key = "<leader>bp";
      action = ":bp<CR>";
    }

    {
      mode = "n";
      key = "<leader>ca";
      action = ":lua vim.lsp.buf.code_action()";
    }

    {
      mode = "n";
      key = "<leader><leader>";
      action = ":cd<CR>";
    }

    {
      mode = "n";
      key = "<leader>nh";
      action = ":noh<CR>";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = ":w<CR>";
    }

    {
      mode = "n";
      key = "<leader>wa";
      action = ":wa<CR>";
    }

    {
      mode = "n";
      key = "<leader>wq";
      action = ":wq<CR>";
    }

    {
      mode = "v";
      key = "<S-Y>";
      action = "\"+y";
    }

    {
      mode = "n";
      key = "<leader>rm";
      action = ":! remind ~/PITH/9JOAAM7J.rem<CR>";
    }

    # formatting
    {
      mode = "n";
      key = "<leader>cs";
      action = ":%!pandoc --to=commonmark-smart";
    }

    {
      mode = "v";
      key = "<leader>cs";
      action = ":%!pandoc --to=commonmark-smart";
    }

    {
      mode = "n";
      key = "<leader>dx";
      action = ":!pandoc -s % --output ~/.docx";
    }

    {
      mode = "v";
      key = "<leader>sn";
      action = ":sort n";
    }

    {
      mode = "v";
      key = "<leader>st";
      action = ":sort";
    }

    {
      mode = "v";
      key = "<leader>tb";
      action = ":'<,'>!pandoc -t commonmark_x";
    }

    # git
    {
      mode = "i";
      key = "<rf";
      action = "refactor():";
    }

    {
      mode = "i";
      key = "<fx";
      action = "fix():";
    }

    {
      mode = "i";
      key = "<ft";
      action = "feat():";
    }

    # splits
    {
      mode = "n";
      key = "<leader>vs";
      action = ":vsplit<CR>";
    }

    {
      mode = "n";
      key = "<leader>v80";
      action = ":vertical resize 80<CR>";
    }

    {
      mode = "n";
      key = "<leader>cl";
      action = ":close<CR>";
    }

    # REPOS
    {
      mode = "n";
      key = "<leader>gp";
      action = ":Git pull origin main<CR>";
    }

    {
      mode = "n";
      key = "<leader>ga";
      action = ":Git add --all<CR>";
    }

    {
      mode = "n";
      key = "<leader>gc";
      action = ":Git commit<CR>";
    }

    {
      mode = "n";
      key = "<leader>gh";
      action = ":Git push origin main<CR>";
    }

    {
      mode = "n";
      key = "<leader>gq";
      action = ":Git push clone main<CR>";
    }

    {
      mode = "n";
      key = "<leader>gs";
      action = ":Git<CR>";
    }

    {
      mode = "n";
      key = "<leader>gl";
      action = ":Git log -p<CR>";
    }

    {
      mode = "n";
      key = "<leader>gd";
      action = ":Git diff --cached<CR>";
    }

    {
      mode = "n";
      key = "<leader>g0";
      action = ":Git diff HEAD<CR>";
    }

    {
      mode = "n";
      key = "<leader>hh";
      action = ":Git diff --no-index --word-diff=plain ~/PITH/6TW8S034.md ~/PITH/18U1Z3ER.md<CR>";
    }

    {
      mode = "n";
      key = "<leader>gn";
      action = ":Git log --name-only<CR>";
    }

    {
      mode = "n";
      key = "<leader>gm";
      action = ":Git log -p -- filename";
    }

    # sessions
    # default -- 8AFK49NM.vim

    {
      mode = "n";
      key = "<leader>s0";
      action = ":source ~/PITH/8AFK49NM.vim<CR>";
    }

    # where to put sessions

    {
      mode = "n";
      key = "<leader>mk";
      action = ":mksession ~/PITH/N6949URA.vim<CR>";
    }

    # registers
    # save

    {
      mode = "n";
      key = "<leader>w1";
      action = ":wv ~/PITH/YASU72AV.vim<CR>";
    }

    # load

    {
      mode = "n";
      key = "<leader>v1";
      action = ":rv ~/PITH/YASU72AV.vim<CR>";
    }

    # FzfLua

    {
      mode = "n";
      key = "<leader>bf";
      action = ":FzfLua buffers<CR>";
    }

    {
      mode = "n";
      key = "<leader>ch";
      action = ":FzfLua command_history<CR>";
    }

    {
      mode = "n";
      key = "<leader>dgc";
      action = ":FzfLua diagnostics_document<CR>";
    }

    {
      mode = "n";
      key = "<leader>dgw";
      action = ":FzfLua diagnostics_workspace<CR>";
    }

    {
      mode = "n";
      key = "<leader>fi";
      action = ":FzfLua files<CR>";
    }

    {
      mode = "n";
      key = "<leader>cb";
      action = ":FzfLua grep_curbuf<CR>";
    }

    {
      mode = "n";
      key = "<leader>hl";
      action = ":FzfLua highlights<CR>";
    }

    {
      mode = "n";
      key = "<leader>km";
      action = ":FzfLua keymaps<CR>";
    }

    {
      mode = "n";
      key = "<leader>lg";
      action = ":FzfLua live_grep_native<CR>";
    }

    {
      mode = "n";
      key = "<leader>df";
      action = ":FzfLua lsp_definitions<CR>";
    }

    {
      mode = "n";
      key = "<leader>ds";
      action = ":FzfLua lsp_document_symbols<CR>";
    }

    {
      mode = "n";
      key = "<leader>rf";
      action = ":FzfLua lsp_references<CR>";
    }

    {
      mode = "n";
      key = "<leader>mr";
      action = ":FzfLua marks<CR>";
    }

    {
      mode = "n";
      key = "<leader>of";
      action = ":FzfLua oldfiles<CR>";
    }

    {
      mode = "n";
      key = "<leader>rt";
      action = ":FzfLua registers<CR>";
    }

    {
      mode = "n";
      key = "<leader>rs";
      action = ":FzfLua resume<CR>";
    }

    {
      mode = "n";
      key = "<leader>ch";
      action = ":FzfLua search_history<CR>";
    }

    {
      mode = "n";
      key = "<leader>qf";
      action = ":FzfLua quickfix<CR>";
    }

    {
      mode = "n";
      key = "<leader>qfs";
      action = ":FzfLua quickfix_stack<CR>";
    }

    {
      mode = "n";
      key = "<leader>gqf";
      action = ":FzfLua lgrep_quickfix<CR>";
    }

    # extensions
    # undotree

    {
      mode = "n";
      key = "<leader>dt";
      action = ":UndotreeToggle<CR>";
    }

    # zk
    # backlinks

    {
      mode = "n";
      key = "<leader>zb";
      action = ":ZkBacklinks<CR>";
    }

    # cd
    # index
    # insertlink

    {
      mode = "n";
      key = "<leader>ll";
      action = ":ZkInsertLink<CR>";
    }

    {
      mode = "n";
      key = "<leader>lr";
      action = ":ZkInsertLink { matchStrategy = 're', match = { vim.fn.input('Search: ')} }<CR>";
    }

    # insertlinkatselection

    {
      mode = "v";
      key = "<leader>zl";
      action = ":ZkInsertLinkAtSelection<CR>";
    }

    # links

    {
      mode = "n";
      key = "<leader>zl";
      action = ":ZkLinks<CR>";
    }

    # match
    # new
    # zknew -- set the fish path to ~/dir/, no ~/dir/.zk as it will be included in dir = below
    # this works when you are in fish shell

    {
      mode = "n";
      key = "<leader>ia";
      action = ":ZkNew { dir = '/home/deeengan/PITH/', group = 'IR7I32C9', template = 'EM5EQUG8.md', title = vim.fn.input('Title: '), content = vim.fn.input('Tags: ') }<CR>";
    }

    {
      mode = "n";
      key = "<leader>dy";
      action = ":ZkNew { dir = '/home/deeengan/PITH/WB3LHT7H/', group = '3DRLMKUS', template = '3DRLMKUS.md' }<CR>";
    }

    # new from content selection

    {
      mode = "v";
      key = "<leader>lc";
      action = ":'<,'><CR>ZkNewFromContentSelection<CR>";
    }

    # new from title selection

    {
      mode = "v";
      key = "<leader>lt";
      action = ":ZkNewFromTitleSelection<CR>";
    }

    # notes

    {
      mode = "n";
      key = "<leader>zn";
      action = ":ZkNotes<CR>";
    }

    {
      mode = "n";
      key = "<leader>zo";
      action = ":ZkNotes { sort = { 'modified' }, orphan = true }<CR>";
    }

    {
      mode = "n";
      key = "<leader>zw";
      action = ":ZkNotes { sort = { 'word-count' } }<CR>";
    }

    # tags

    {
      mode = "n";
      key = "<leader>zt";
      action = ":ZkTags<CR>";
    }

    # hop

    {
      mode = "n";
      key = "<leader>ho";
      action = ":HopWord<CR>";
    }

    # replacements

    # html

    {
      mode = "i";
      key = "&b";
      action = "<button data-when=\"0.0\">是</button>";
    }

    {
      mode = "i";
      key = "&m";
      action = "<mark><button data-when=\"0.0\">好</button><i>︐</i></mark>";
    }

    # en

    {
      mode = "i";
      key = "!!";
      action = "<!--- -->";
    }

    # de

    {
      mode = "i";
      key = "a`";
      action = "ä";
    }

    {
      mode = "i";
      key = "o`";
      action = "ö";
    }

    {
      mode = "i";
      key = "u`";
      action = "ü";
    }

    {
      mode = "i";
      key = ",,";
      action = "„";
    }
  ];
}
