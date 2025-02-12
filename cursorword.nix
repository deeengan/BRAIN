{ ... }: {

  programs.nixvim.plugins.mini = {
      modules = {
        cursorword = {
          delay = 0;

      };
    };
  };
}
