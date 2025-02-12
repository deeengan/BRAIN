{config, ...}: {
  programs.nixvim.plugins.treesitter = {
    enable = true;

    folding = true;
    nixvimInjections = true;
    nixGrammars = true;

    # https://github.com/tree-sitter/tree-sitter/wiki/List-of-parsers
    grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
      comment
      css
      csv
      fish
      git_config
      git_rebase
      gitattributes
      gitcommit
      gitignore
      html
      javascript
      markdown
      markdown_inline
      nix
      regex
      tree-sitter-fish
      tree-sitter-json
      tree-sitter-ledger
      tree-sitter-yaml
      tsv
      typescript
    ];

    settings = {
      indent = {
        enable = true;
      };
      highlight = {
        additional_vim_regex_highlighting = ["markdown"];
        enable = true;
      };
    };
  };

  programs.nixvim.plugins.treesitter-refactor = {
    enable = true;
    highlightDefinitions.enable = true;
  };
}
