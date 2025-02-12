{...}: {
  programs = {
    hyprlock = {
      enable = true;

      settings = {
        general = {
          disable_loading_bar = true;
          grace = 10;
          hide_cursor = true;
          no_fade_in = false;
        };

        label = {
          text = "$TIME12";
          position = "0, 600";
          halign = "center";
          walign = "center";
          shadow_passes = 1;
        };
      };
    };
  };

  services = {
    hypridle = {
      enable = true;
      settings = {
        general = {
          after_sleep_cmd = "hyprctl dispatch dpms on";
          before_sleep_cmd = "loginctl lock-session";
          ignore_dbus_inhibit = false;
          lock_cmd = "pidof hyprlock || hyprlock";
        };

        listener = [
          {
            timeout = 300;
            on-timeout = "brightnessctl -s set 20";
            on-resume = "brightnessctl -r";
          }
          {
            timeout = 600;
            on-timeout = "loginctl lock-session";
          }
          {
            timeout = 900;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
          {
            timeout = 2000;
            on-timeout = "sysemctl suspend";
          }
        ];
      };
    };

    hyprpaper = {
      enable = true;
      settings = {
        splash = false;
      };
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      animations = {
        first_launch_animation = false;
        enabled = false;
        # bezier = [
        #   "fade, .42, 0, .58, 1"
        # ];

        # animation = [
        #   "layers, 1, 3, fade, fade"
        #   "windows, 1, 3, fade"
        #   "workspaces, 1, 3, fade, fade"
        # ];
      };

      bind = [
        "$mainMod CTRL, l, exec, hyprlock"
        "$mainMod, Return, exec, $terminal"
        "$mainMod, c, exec, hyprshot -m region"
        "$mainMod, f, exec, fuzzel"
        "$mainMod, mouse:272, movewindow"

        "$mainMod CTRL, o, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        "$mainMod CTRL, m, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "$mainMod CTRL, s, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"

        "$mainMod CTRL, d, exec, ddcutil setvcp 10 - 10"
        "$mainMod CTRL, u, exec, ddcutil setvcp 10 + 10"

        "$mainMod SHIFT CTRL, p, forcekillactive"
        "$mainMod SHIFT CTRL, q, killactive"

        "$mainMod, h, movefocus, l"
        "$mainMod, j, movefocus, d"
        "$mainMod, k, movefocus, u"
        "$mainMod, l, movefocus, r"

        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, j, movewindow, u"
        "$mainMod SHIFT, k, movewindow, d"
        "$mainMod SHIFT, l, movewindow, r"
        "$mainMod, n, cyclenext"

        "$mainMod, q, workspace, 1"
        "$mainMod, w, workspace, 2"
        "$mainMod, a, workspace, 3"
        "$mainMod, e, workspace, 4"
        "$mainMod, s, workspace, 5"
        "$mainMod, z, workspace, 6"
        "$mainMod, r, workspace, 7"
        "$mainMod, d, workspace, 8"
        "$mainMod, x, workspace, 9"
        "$mainMod, t, workspace, 10"

        "$mainMod SHIFT, q, movetoworkspacesilent, 1"
        "$mainMod SHIFT, w, movetoworkspacesilent, 2"
        "$mainMod SHIFT, a, movetoworkspacesilent, 3"
        "$mainMod SHIFT, e, movetoworkspacesilent, 4"
        "$mainMod SHIFT, s, movetoworkspacesilent, 5"
        "$mainMod SHIFT, z, movetoworkspacesilent, 6"
        "$mainMod SHIFT, r, movetoworkspacesilent, 7"
        "$mainMod SHIFT, d, movetoworkspacesilent, 8"
        "$mainMod SHIFT, x, movetoworkspacesilent, 9"
        "$mainMod SHIFT, t, movetoworkspacesilent, 10"

        "$mainMod, Tab, workspace, e+1"
        "$mainMod SHIFT, Tab, workspace, e-1"
      ];

      decoration = {
        rounding = 12;
        active_opacity = 1.0;
        inactive_opacity = 0.9;
        shadow = {
          # enabled = true;
          # range = 100;
          # render_power = 3;
          # offset = "3 3";
        };

        blur = {
          enabled = false;
        };
      };

      ecosystem = {
        no_donation_nag = true;
      };

      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      general = {
        border_size = 2;
        resize_on_border = "yes";
        extend_border_grab_area = 20;
      };

      input = {
        #  kb_layout = "us";
        #  kb_options = "caps:swapescape";
        natural_scroll = true;
      };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };

      monitor = ",3840x2160@144,auto,2.00";
      "$mainMod" = "META";
      "$terminal" = "alacritty";

      windowrulev2 = "tile,class:(REAPER)";
    };
  };
}
