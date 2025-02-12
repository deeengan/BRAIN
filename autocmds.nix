{...}: {
  # the structure is within {
  programs.nixvim.autoCmd = [
    {
      event = "FileType";
      pattern = [
        "markdown"
        "ink"
      ];
      command = "setlocal textwidth=66 formatoptions+=awmM";

      # setlocal: only current buffer not globally
      # textwidth: the screen length across, words
      # + When you want to add a flag to such an option, without changing the existing ones, you can do it like this:
      # a Automatic formatting of paragraphs. Every time text is inserted or deleted the paragraph will be reformatted. See auto-format. When the 'c' flag is present this only happens for recognized comments.
      # w Trailing white space indicates a paragraph continues in the next line. A line that ends in a non-white character ends a paragraph.
      # m Also break at a multibyte character above 255, CJK
      # M When joining lines, don't insert a space before or after a multibyte character. Overrules the 'B' flag.
    }

    {
      event = "FileType";
      pattern = [
        "markdown"
        "ink"
      ];
      command = "setlocal winwidth=1";
    }

    #{
    #  event = "FileType";
    #  pattern = [
    #    "TelescopeResults"
    #];
    #  command = "setlocal nofoldenable";

    #}
  ];
}
