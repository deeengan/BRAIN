{...}: {
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
    defaultOptions = [
      # need to tell VIM no color ansi
      "--color=bg+:-1"
      "--color=bg:-1"
      "--color=fg+:-1"
      "--color=fg:-1"
      "--color=header:-1"
      "--color=hl+:-1"
      "--color=hl:-1"
      "--color=info:-1"
      "--color=marker:-1"
      "--color=pointer:-1"
      "--color=prompt:-1"
      "--color=spinner:-1"
    ];
  };
}
