{...}: {
  home = {
    file = {
      ".ncpamixer.conf" = {
        force = true;
        text = ''
          "theme" = "default"
          # Default theme {
             "theme.default.static_bar"             = false
             "theme.default.default_indicator"      = "♦ "
             "theme.default.bar_style.bg"           = "░"
             "theme.default.bar_style.fg"           = "█"
             "theme.default.bar_style.indicator"    = "█"
             "theme.default.bar_style.top"          = "▁"
             "theme.default.bar_style.bottom"       = "▔"
             "theme.default.bar_low.front"          = 2
             "theme.default.bar_low.back"           = 0
             "theme.default.bar_mid.front"          = 3
             "theme.default.bar_mid.back"           = 0
             "theme.default.bar_high.front"         = 1
             "theme.default.bar_high.back"          = 0
             "theme.default.volume_low"             = 2
             "theme.default.volume_mid"             = 3
             "theme.default.volume_high"            = 1
             "theme.default.volume_peak"            = 1
             "theme.default.volume_indicator"       = -1
             "theme.default.selected"               = 2
             "theme.default.default"                = -1
             "theme.default.border"                 = -1
             "theme.default.dropdown.selected_text" = 0
             "theme.default.dropdown.selected"      = 2
             "theme.default.dropdown.unselected"    = -1
          # }
          # c0r73x theme {
             "theme.c0r73x.static_bar"             = false
             "theme.c0r73x.default_indicator"      = "■ "
             "theme.c0r73x.bar_style.bg"           = "■"
             "theme.c0r73x.bar_style.fg"           = "■"
             "theme.c0r73x.bar_style.indicator"    = "■"
             "theme.c0r73x.bar_style.top"          = ""
             "theme.c0r73x.bar_style.bottom"       = ""
             "theme.c0r73x.bar_low.front"          = 0
             "theme.c0r73x.bar_low.back"           = -1
             "theme.c0r73x.bar_mid.front"          = 0
             "theme.c0r73x.bar_mid.back"           = -1
             "theme.c0r73x.bar_high.front"         = 0
             "theme.c0r73x.bar_high.back"          = -1
             "theme.c0r73x.volume_low"             = 6
             "theme.c0r73x.volume_mid"             = 6
             "theme.c0r73x.volume_high"            = 6
             "theme.c0r73x.volume_peak"            = 1
             "theme.c0r73x.volume_indicator"       = 15
             "theme.c0r73x.selected"               = 6
             "theme.c0r73x.default"                = -1
             "theme.c0r73x.border"                 = -1
             "theme.c0r73x.dropdown.selected_text" = 0
             "theme.c0r73x.dropdown.selected"      = 6
             "theme.c0r73x.dropdown.unselected"    = -1
          # }
          # Keybinds {
             "keycode.9"    = "switch"          # tab
             "keycode.13"   = "select"          # enter
             "keycode.27"   = "quit"            # escape
             "keycode.99"   = "dropdown"        # c
             "keycode.113"  = "quit"            # q
             "keycode.109"  = "mute"            # m
             "keycode.100"  = "set_default"     # d
             "keycode.108"  = "volume_up"       # l
             "keycode.104"  = "volume_down"     # h
             # "keycode.261"  = "volume_up"       # arrow right
             # "keycode.260"  = "volume_down"     # arrow left
             "keycode.107"  = "move_up"         # k
             "keycode.106"  = "move_down"       # j
             # "keycode.259"  = "move_up"         # arrow up
             # "keycode.258"  = "move_down"       # arrow down
             # "keycode.338"  = "page_up"         # page up
             # "keycode.339"  = "page_down"       # page down
             "keycode.76"   = "tab_next"        # L
             "keycode.72"   = "tab_prev"        # H
             # "keycode.265"  = "tab_playback"    # f1
             # "keycode.266"  = "tab_recording"   # f2
             # "keycode.267"  = "tab_output"      # f3
             # "keycode.268"  = "tab_input"       # f4
             # "keycode.269"  = "tab_config"      # f5
             "keycode.f.80" = "tab_playback"    # f1 VT100
             "keycode.f.81" = "tab_recording"   # f2 VT100
             "keycode.f.82" = "tab_output"      # f3 VT100
             "keycode.f.83" = "tab_input"       # f4 VT100
             "keycode.f.84" = "tab_config"      # f5 VT100
             "keycode.71"   = "move_last"       # G
             "keycode.103"  = "move_first"      # g
          #   "keycode.48"   = "set_volume_100"  # 0
             "keycode.48"   = "set_volume_0"    # 0
             "keycode.49"   = "set_volume_10"   # 1
             "keycode.50"   = "set_volume_20"   # 2
             "keycode.51"   = "set_volume_30"   # 3
             "keycode.52"   = "set_volume_40"   # 4
             "keycode.53"   = "set_volume_50"   # 5
             "keycode.54"   = "set_volume_60"   # 6
             "keycode.55"   = "set_volume_70"   # 7
             "keycode.56"   = "set_volume_80"   # 8
             "keycode.57"   = "set_volume_90"   # 9
             "keycode.63"   = "help"            # ?
          # }
        '';
      };
    };
  };
}
