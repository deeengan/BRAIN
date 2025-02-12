{...}: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      character = {
        # http://xahlee.info/comp/unicode_arrows.html
        success_symbol = "[󰘍](bold green)";
        error_symbol = "[✗](bold red)";
      };
      git_branch = {
        symbol = " ";
      };
      memory_usage = {
        threshold = 0;
        disabled = false;
      };
      shell = {
        disabled = false;
        fish_indicator = " ";
      };
    };
  };
}
