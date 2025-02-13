{pkgs, ...}: {
  # https://github.com/fish-shell/fish-shell/tree/master/share/completions
  # https://github.com/pirate/fish-utils

  home = {
    file = {
      ".config/fish/completions/fzf.fish" = {
        force = true;
        text = ''
          complete -c fzf -f

          # Search mode
          complete -c fzf -l no-extended -d no-extended
          complete -c fzf -n 'string match "+*" -- (commandline -ct)' -a +x -d no-extended
          complete -c fzf -s e -l exact -d 'Enable exact-match'
          complete -c fzf -n 'string match "+*" -- (commandline -ct)' -a +i -d 'case-sensitive match'
          complete -c fzf -s i -d 'Case-insensitive match'
          complete -c fzf -l literal -d 'Do not normalize latin script letters for matching'
          complete -c fzf -l algo -d 'Fuzzy matching algorithm' -x -a 'v1 v2'
          complete -c fzf -s n -l nth -d 'Limit search scope using field index expressions' -x
          complete -c fzf -l with-nth -d 'Transform each line using field index expressions' -x
          complete -c fzf -s d -l delimiter -d 'Field delimiter regex for --nth and --with-nth' -x

          # Search result
          complete -c fzf -l no-sort -d 'Do not sort the result'
          complete -c fzf -n 'string match "+*" -- (commandline -ct)' -a +s -d 'Do not sort the result'
          complete -c fzf -l tac -d 'Reverse the order of the input'
          complete -c fzf -l disabled -d 'Do not perform search'
          complete -c fzf -l tiebreak -d 'Sort criteria when breaking ties' -x -a 'length begin end index'

          # Interface
          complete -c fzf -s m -l multi -d 'Enable multi-select with tab/shift-tab'
          complete -c fzf -l no-multi -d 'Disable multi-select'
          complete -c fzf -n 'string match "+*" -- (commandline -ct)' -a +m -d 'Disable multi-select'
          complete -c fzf -l no-mouse -d 'Disable mouse'
          complete -c fzf -l bind -d 'Custom key bindings' -x
          complete -c fzf -l cycle -d 'Enable cyclic scroll'
          complete -c fzf -l keep-right -d 'Keep the right end of the line visible on overflow'
          complete -c fzf -l no-hscroll -d 'Disable horizontal scroll'
          complete -c fzf -l hscroll-off -d 'Number of columns to keep right of highlighted substring' -x
          complete -c fzf -l filepath-word -d 'Make word-wise movements respect path separators'
          complete -c fzf -l jump-labels -d 'Label characters for jump and jump-accept' -x

          # layout
          complete -c fzf -l height -d 'Display fzf window with the given height' -x
          complete -c fzf -l min-height -d 'Minimum height when --height is given in percent' -x
          complete -c fzf -l layout -d 'Choose the layout' -x -a 'default reverse reverse-list'
          complete -c fzf -l reverse -d 'A synonym for --layout=reverse'
          complete -c fzf -l border -d 'Draw border around the finder' -x -a 'rounded sharp horizontal'
          complete -c fzf -l no-unicode -d 'Draw border with ASCII characters'
          complete -c fzf -l margin -d 'Expression for margins around the finder'
          complete -c fzf -l info -d 'Finder info style' -x -a 'default inline hidden'
          complete -c fzf -l inline-info -d 'Display finder info inline with the query'
          complete -c fzf -l prompt -d 'Input prompt' -x
          complete -c fzf -l pointer -d 'Pointer to the current line' -x
          complete -c fzf -l marker -d 'Multi-select marker' -x
          complete -c fzf -l header -d 'String to print as header' -x
          complete -c fzf -l header-lines -d 'Treat the first N lines of input as header' -x

          # Display
          complete -c fzf -l ansi -d 'Enable processing of ANSI color codes'
          complete -c fzf -l tabstop -d 'Number of spaces for a tab character' -x
          complete -c fzf -l color -d 'Color configuration' -x
          complete -c fzf -l no-bold -d 'Do not use bold text'
          complete -c fzf -l black -d 'Use black background'

          # History
          complete -c fzf -l history -d 'History file' -x
          complete -c fzf -l history-size -d 'Maximum number of history entries' -x

          # Preview
          complete -c fzf -l preview -d 'Command to preview highlighted line' -x
          complete -c fzf -l preview-window -d 'Preview window layout' -x

          # Scripting
          complete -c fzf -s q -l query -d 'Start the finder with the given query' -x
          complete -c fzf -s 1 -l select-1 -d 'Automatically select the only match'
          complete -c fzf -s 0 -l exit-0 -d 'Exit immediately when there\'s no match'
          complete -c fzf -s f -l filter -d 'Filter mode. Do not start interactive finder' -x
          complete -c fzf -l print-query -d 'Print query as the first line'
          complete -c fzf -l expect -d 'List of keys to complete fzf' -x
          complete -c fzf -l read0 -d 'Read input delimited by ASCII NUL characters'
          complete -c fzf -l print0 -d 'Print output delimited by ASCII NUL characters'
          complete -c fzf -l no-clear -d 'Do not clear finder interface on exit'
          complete -c fzf -l sync -d 'Synchronous search for multi-staged filtering'
          complete -c fzf -l version -d 'Display version information and exit'

        '';
      };

      ".config/fish/completions/gpg2.fish" = {
        force = true;
        text = ''

          __fish_complete_gpg gpg2

        '';
      };

      ".config/fish/completions/keepassxc-cli.fish" = {
        force = true;
        text = ''

          # Completions for keepassxc-cli

          # General options
          complete -c keepassxc-cli -l debug-info -d "Show debug info"
          complete -r -c keepassxc-cli -s k -l key-file -d "Specify a key file"
          complete -c keepassxc-cli -l no-password -d "Deactivate the password key"
          complete -r -c keepassxc-cli -s y -l yubikey -d "Specify a yubikey slot"
          complete -r -c keepassxc-cli -s q -l quiet -d "Be quiet"
          complete -c keepassxc-cli -s h -l help -d "Show help info"
          complete -c keepassxc-cli -s v -l version -d "Show version info"

          # Commands
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a add -d "Add a new entry"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a analyze -d "Analyze password for weakness and problem"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a clip -d "Copy an entry's password to the clipboard"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a close -d "Close the currently opened database"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a create -d "Create new database"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a diceware -d "Generate a new random diceware passphrase"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a edit -d "Edit an entry"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a estimate -d "Estimate the entropy of a password"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a exit -d "Exit interactive mode"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a export -d "Export the contents to stdout"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a generate -d "Generate a new password"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a help -d "Show command help"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a import -d "Import the contents"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a locate -d "Find entries quickly"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a ls -d "List database entries"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a merge -d "Merge two databases"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a mkdir -d "Add a new group"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a mv -d "Move an entry"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a open -d "Open a database"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a quit -d "Exit interactive mode"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a rm -d "Remove an entry"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a rmdir -d "Remove a group"
          complete -f -c keepassxc-cli -n __fish_use_subcommand -a show -d "Show an entry's info"

          ## Merge options
          complete -r -c keepassxc-cli -n "__fish_seen_subcommand_from merge" -s d -l dry-run -d "Dry run"
          complete -r -c keepassxc-cli -n "__fish_seen_subcommand_from merge" -l key-file-from -d "Key file to merge from"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from merge" -l no-password-from -d "Deactivate the password key to merge from"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from merge" -l yubikey-from -d "Yubikey slot for the second database"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from merge" -s s -l same-credentials -d "Use the same credentials for both databases"

          ## Add and edit options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from add edit" -s u -l username -d "Username for the entry"
          complete -f -c keepassxc-cli -n "__fish_seen_subcommand_from add edit" -l url -d "URL for the entry"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from add edit" -p u -l password-prompt -d "Prompt for the entry's password"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from add edit" -s g -l generate -d "Generate a password for the entry"

          ## Edit options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from edit" -s t -l title -d "Title for the entry"

          ## Estimate options
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from estimate" -s a -l advanced -d "Perform advanced analysis on the password"

          ## Analyze options
          complete -r -c keepassxc-cli -n "__fish_seen_subcommand_from analyze" -s H -l hibp -d "Check if any passwords have been publicly leaked"

          ## Clip options
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from clip" -s t -l totp -d "Copy the current TOTP to the clipboard"

          ## Show options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from show" -s a -l attributes -d "Names of the attributes to show"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from show" -s s -l show-protected -d "Show the protected attributes in clear text"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from show" -s t -l totp -d "Show the entry's current TOTP"

          ## Diceware options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from diceware" -s W -l words -d "Word count for the diceware passphrase"
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from diceware" -s w -l word-list -d "Wordlist for the diceware generator"

          ## Export options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from export" -s f -l format -a "xml csv" -d "Format to use when exporting"

          ## List options
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from ls" -s R -l recursive -d "Recursively list the elements of the group"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from ls" -s f -l flatten -d "Flattens the output to single line"

          ## Generate options
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s L -l length -d "Length of the generated password"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s l -l lower -d "Use lowercase chars"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s U -l upper -d "Use uppercase chars"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s n -l numeric -d "Use numbers"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s s -l special -d "Use special chars"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s e -l extended -d "Use extended ASCII"
          complete -x -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -s x -l exclude -d "Exclude char set"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -l exclude-similar -d "Exclude similar looking chars"
          complete -c keepassxc-cli -n "__fish_seen_subcommand_from generate" -l every-group -d "Include chars from every selected group"

        '';
      };

      ".config/fish/completions/pass.fish" = {
        force = true;
        text = ''

          # Copyright (C) 2012-2014 Dmitry Medvinsky <me@dmedvinsky.name>. All Rights Reserved.
          # This file is licensed under the GPLv2+. Please see COPYING for more information.

          set -l PROG 'pass'

          function __fish_pass_get_prefix
              if set -q PASSWORD_STORE_DIR
                  realpath -- "$PASSWORD_STORE_DIR"
              else
                  echo "$HOME/.password-store"
              end
          end

          function __fish_pass_needs_command
              [ (count (commandline -opc)) -eq 1 ]
          end

          function __fish_pass_uses_command
              set -l cmd (commandline -opc)
              if [ (count $cmd) -gt 1 ]
                  if [ $argv[1] = $cmd[2] ]
                      return 0
                  end
              end
              return 1
          end

          function __fish_pass_print_gpg_keys
              gpg2 --list-keys | grep uid | sed 's/.*<\(.*\)>/\1/'
          end

          function __fish_pass_print
              set -l ext $argv[1]
              set -l strip $argv[2]
              set -l prefix (__fish_pass_get_prefix)
              set -l matches $prefix/**$ext
              printf '%s\n' $matches | sed "s#$prefix/\(.*\)$strip#\1#"
          end

          function __fish_pass_print_entry_dirs
              __fish_pass_print "/"
          end

          function __fish_pass_print_entries
              __fish_pass_print ".gpg" ".gpg"
          end

          function __fish_pass_print_entries_and_dirs
              __fish_pass_print_entry_dirs
              __fish_pass_print_entries
          end

          function __fish_pass_git_complete
              set -l prefix (__fish_pass_get_prefix)
              set -l git_cmd (commandline -opc) (commandline -ct)
              set -e git_cmd[1 2] # Drop "pass git".
              complete -C"git -C $prefix $git_cmd"
          end

          complete -c $PROG -f -n '__fish_pass_needs_command' -a help -d 'Command: show usage help'
          complete -c $PROG -f -n '__fish_pass_needs_command' -a version -d 'Command: show program version'

          complete -c $PROG -f -n '__fish_pass_needs_command' -a init -d 'Command: initialize new password storage'
          complete -c $PROG -f -n '__fish_pass_uses_command init' -s p -l path -d 'Assign gpg-id for specified sub folder of password store'

          complete -c $PROG -f -n '__fish_pass_needs_command' -a ls -d 'Command: list passwords'
          complete -c $PROG -f -n '__fish_pass_uses_command ls' -a "(__fish_pass_print_entry_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a insert -d 'Command: insert new password'
          complete -c $PROG -f -n '__fish_pass_uses_command insert' -s e -l echo -d 'Echo the password on console'
          complete -c $PROG -f -n '__fish_pass_uses_command insert' -s m -l multiline -d 'Provide multiline password entry'
          complete -c $PROG -f -n '__fish_pass_uses_command insert' -s f -l force -d 'Do not prompt before overwritting'
          complete -c $PROG -f -n '__fish_pass_uses_command insert' -a "(__fish_pass_print_entry_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a generate -d 'Command: generate new password'
          complete -c $PROG -f -n '__fish_pass_uses_command generate' -s n -l no-symbols -d 'Do not use special symbols'
          complete -c $PROG -f -n '__fish_pass_uses_command generate' -s c -l clip -d 'Put the password in clipboard'
          complete -c $PROG -f -n '__fish_pass_uses_command generate' -s f -l force -d 'Do not prompt before overwritting'
          complete -c $PROG -f -n '__fish_pass_uses_command generate' -s i -l in-place -d 'Replace only the first line with the generated password'
          complete -c $PROG -f -n '__fish_pass_uses_command generate' -a "(__fish_pass_print_entry_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a mv -d 'Command: rename existing password'
          complete -c $PROG -f -n '__fish_pass_uses_command mv' -s f -l force -d 'Force rename'
          complete -c $PROG -f -n '__fish_pass_uses_command mv' -a "(__fish_pass_print_entries_and_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a cp -d 'Command: copy existing password'
          complete -c $PROG -f -n '__fish_pass_uses_command cp' -s f -l force -d 'Force copy'
          complete -c $PROG -f -n '__fish_pass_uses_command cp' -a "(__fish_pass_print_entries_and_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a rm -d 'Command: remove existing password'
          complete -c $PROG -f -n '__fish_pass_uses_command rm' -s r -l recursive -d 'Remove password groups recursively'
          complete -c $PROG -f -n '__fish_pass_uses_command rm' -s f -l force -d 'Force removal'
          complete -c $PROG -f -n '__fish_pass_uses_command rm' -a "(__fish_pass_print_entries_and_dirs)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a edit -d 'Command: edit password using text editor'
          complete -c $PROG -f -n '__fish_pass_uses_command edit' -a "(__fish_pass_print_entries)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a show -d 'Command: show existing password'
          complete -c $PROG -f -n '__fish_pass_uses_command show' -s c -l clip -d 'Put password in clipboard'
          complete -c $PROG -f -n '__fish_pass_uses_command show' -a "(__fish_pass_print_entries)"
          # When no command is given, `show` is defaulted.
          complete -c $PROG -f -n '__fish_pass_needs_command' -s c -l clip -d 'Put password in clipboard'
          complete -c $PROG -f -n '__fish_pass_needs_command' -a "(__fish_pass_print_entries)"
          complete -c $PROG -f -n '__fish_pass_uses_command -c' -a "(__fish_pass_print_entries)"
          complete -c $PROG -f -n '__fish_pass_uses_command --clip' -a "(__fish_pass_print_entries)"

          complete -c $PROG -f -n '__fish_pass_needs_command' -a git -d 'Command: execute a git command'
          complete -c $PROG -f -n '__fish_pass_uses_command git' -a '(__fish_pass_git_complete)'
          complete -c $PROG -f -n '__fish_pass_needs_command' -a find -d 'Command: find a password file or directory matching pattern'
          complete -c $PROG -f -n '__fish_pass_needs_command' -a grep -d 'Command: search inside of decrypted password files for matching pattern'
          complete -c $PROG -f -n '__fish_pass_uses_command grep' -a '(begin
              set -l cmd (commandline -opc) (commandline -ct)
              set -e cmd[1 2] # Drop "pass grep".
              complete -C"grep $cmd"
          end)'

        '';
      };

      ".config/fish/completions/starship.fish" = {
        force = true;
        text = ''

          starship completions fish | source

        '';
      };
    };
  };

  programs.fish = {
    enable = true;

    functions = {
      beet = ''        function beetle
               rm -rf ~/mnt/beetle/
               mkdir ~/mnt/beetle/
             end
      '';

      dict = ''        function dict
               cp ~/MIND/I93ETPMQ.html ~/SITE/看馬利亞/index.html
               cp ~/MIND/I93ETPMQ.html ~/SITE/index-看馬利亞.html
               end
      '';

      dirs = ''        function dirs
               # cp to MIND
                   cp -rf ~/Downloads/sioyek ~/MIND/MAT86EB3/
                   cp -rf ~/.config/REAPER/Configurations ~/MIND/MAT86EB3/REAPER/
                   cp -rf ~/reaper/*.RPP ~/MIND/MAT86EB3/REAPER/
               # cp random things to beetle
                 # dots
                     cp -rf ~/.pandoc/ ~/mnt/beetle/
                     cp -rf ~/.ssh/ ~/mnt/beetle/
                     cp -rf ~/.gnupg/ ~/mnt/beetle/
                 # files
                   cp -rf ~/BRAIN/ ~/mnt/beetle/
                   cp -rf ~/MIND/ ~/mnt/beetle/
                   cp -rf ~/SITE/ ~/mnt/beetle/
                   cp -rf ~/.password-store/ ~/mnt/beetle/
                 # clips && audio
                   cp -rf ~/.config/REAPER/Configurations/ ~/mnt/beetle/
                   cp -rf ~/reaper/nannang-intro.RPP ~/mnt/beetle/
                   cp -rf ~/.local/share/Anki2/Main/* ~/mnt/beetle/
                   cp -rf ~/.local/share/Anki2/Main/collection.media/* ~/mnt/beetle/
             end
      '';
    };

    interactiveShellInit = ''
      bind \cb backward-word
      bind \ce forward-word
      bind \ch backward-char
      bind \cj history-search-forward
      bind \ck history-search-backward
      bind \cl forward-char

      set -U -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
      set -e SSH_AUTH_SOCK
      set -x EDITOR nvim
      set -x LEDGER_FILE ~/MIND/XP6VMXXU.hledger
      set -x ZK_NOTEBOOK_DIR ~/MIND/
      set fish_greeting ""
      set fish_save_history yes
    '';

    loginShellInit = ''
      gpgconf --launch gpg-agent
      fixGpg
    '';

    plugins = [
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }

      {
        name = "done";
        src = pkgs.fishPlugins.done.src;
      }

      {
        name = "fzf";
        src = pkgs.fishPlugins.fzf.src;
      }

      {
        name = "spark";
        src = pkgs.fishPlugins.spark.src;
      }

      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
    ];

    shellAbbrs = {
      "." = "cd -";
      ".." = "cd ../";
      "b" = "cd ~/BRAIN/";
      "ff" = "ffmpeg -i input.webm output.mp4";
      "p" = "cd ~/MIND/";
      "yt" = "yt-dlp --format mp4 [video URL]";
    };

    shellAliases = {
      grep = "grep --color=always";
      ls = "ls --color=always";
    };

    shellInit = ''
    '';
  };
}
