{...}: {
  #  If you find yourself in this situation the panic sequence <backspace>+<escape>+<enter> will force keyd to terminate.
  # https://man.archlinux.org/man/keyd.1.en
  # https://github.com/rvaiya/keyd/blob/2338f11b1ddd81eaddd957de720a3b4279222da0/t/keys.py#L31

  # shift = "oneshot(shift)";
  # "a" = "overloadi(a, overloadt2(control, a, 200), 150)";
  # "a" = "lettermod(meta, a, 150, 200)";
  # "d" = "lettermod(alt, d, 150, 200)";
  # "k" = "lettermod(control, k, 150, 200)";

  # "a+s" = "layer(meta)";
  # "d+f" = "layer(alt)";
  # "j+k" = "layer(shift)";
  # "k+l" = "overload(control, esc)";

  services = {
    keyd = {
      enable = true;
      keyboards = {
        default = {
          settings = {
            main = {
              # META / SHIFT hyprland
              capslock = "overload(control, esc)";
              leftalt = "layer(alt)";
              leftmeta = "layer(meta)";
              rightalt = "toggle(rightalt)";
              rightmeta = "toggle(rightmeta)";

              a = "a";
              b = "b";
              c = "c";
              d = "d";
              e = "e";
              f = "f";
              g = "g";
              h = "h";
              i = "i";
              j = "j";
              k = "k";
              l = "l";
              m = "m";
              n = "n";
              o = "o";
              p = "p";
              q = "q";
              r = "r";
              s = "s";
              t = "t";
              u = "u";
              v = "v";
              w = "w";
              x = "x";
              y = "y";
              z = "z";
            };

            "alt" = {
              a = "1";
              s = "2";
              d = "3";
              z = "4";
              x = "5";
              c = "6";
              v = "7";
              b = "8";
              n = "9";
              m = "0";

              q = "!";
              w = "@";
              e = "#";
              r = "$";
              t = "%";
              y = "^";
              u = "&";
              i = "*";
              o = "(";
              p = ")";
              f = "-";
            };

            "shift" = {
              # left hand
              # q = "Q";
              # w = "W";
              # e = "F";
              # r = "P";
              # t = "B";

              # a = "A";
              # s = "R";
              # d = "S";
              # f = "T";
              # g = "G";

              # z = "Z";
              # x = "X";
              # c = "C";
              # v = "D";
              # b = "V";

              # # right hand
              # y = "J";
              # u = "L";
              # i = "U";
              # o = "Y";

              # h = "M";
              # j = "N";
              # k = "E";
              # l = "I";
              # ";" = "O";

              # n = "K";
              # m = "H";
              # "," = "backspace";
            };

            capslock = {
            };

            rightalt = {
              u = "left";
              y = "down";
              n = "up";
              m = "right";
              o = "home";
              ";" = "end";
            };

            rightmeta = {
              # left hand
              q = "q";
              w = "w";
              e = "f";
              r = "p";
              t = "b";

              a = "a";
              s = "r";
              d = "s";
              f = "t";
              g = "g";

              z = "z";
              x = "x";
              c = "c";
              v = "d";
              b = "v";

              # right hand
              y = "j";
              u = "l";
              i = "u";
              o = "y";
              p = ";";

              h = "m";
              j = "n";
              k = "e";
              l = "i";
              ";" = "o";

              n = "k";
              m = "h";
              "," = "backspace";

              # punct
              "." = ".";
              "a+s" = ",";
              "j+k" = "?";
              "n+m" = ":";
            };
          };

          ids = [
            "*"
          ];
        };
      };
    };
  };
}
# valid keys from keyd list-keys:
# minus
# _
# =
# equal
# +
# backspace
# tab
# [
# leftbrace
# {
# ]
# rightbrace
# }
# enter
# leftcontrol
#
# ;
# semicolon
# :
# '
# apostrophe
# "
# `
# grave
# ~
# leftshift
#
# \
# backslash
# |
# ,
# comma
# <
# .
# dot
# >
# /
# slash
# ?
# rightshift
# kpasterisk
#
# capslock
# f1
# f2
# f3
# f4
# f5
# f6
# f7
# f8
# f9
# f10
# numlock
# scrolllock
# kp7
# kp8
# kp9
# kpminus
# kp4
# kp5
# kp6
# kpplus
# kp1
# kp2
# kp3
# kp0
# kpdot
# iso-level3-shift
# zenkakuhankaku
# 102nd
# f11
# f12
# ro
# katakana
# hiragana
# henkan
# katakanahiragana
# muhenkan
# kpjpcomma
# kpenter
# rightcontrol
# kpslash
# sysrq
# rightalt
# linefeed
# home
# up
# pageup
# left
# right
# end
# down
# pagedown
# insert
# delete
# macro
# mute
# volumedown
# volumeup
# power
# kpequal
# kpplusminus
# pause
# scale
# kpcomma
# hangeul
# hanja
# yen
#
# compose
# stop
# again
# props
# undo
# front
# copy
# open
# paste
# find
# cut
# help
# menu
# calc
# setup
# sleep
# wakeup
# file
# sendfile
# deletefile
# xfer
# prog1
# prog2
# www
# msdos
# coffee
# display
# cyclewindows
# mail
# bookmarks
# computer
# back
# forward
# closecd
# ejectcd
# ejectclosecd
# nextsong
# playpause
# previoussong
# stopcd
# record
# rewind
# phone
# iso
# config
# homepage
# refresh
# exit
# move
# edit
# zoom
# mouseback
# kpleftparen
# kprightparen
# new
# redo
# f13
# f14
# f15
# f16
# f17
# f18
# f19
# f20
# f21
# f22
# f23
# f24
# noop
# playcd
# pausecd
# prog3
# prog4
# dashboard
# suspend
# close
# play
# fastforward
# bassboost
# print
# hp
# camera
# sound
# question
# email
# chat
# search
# connect
# finance
# sport
# shop
# voicecommand
# cancel
# brightnessdown
# brightnessup
# media
# switchvideomode
# kbdillumtoggle
# kbdillumdown
# kbdillumup
# send
# reply
# forwardmail
# save
# documents
# battery
# bluetooth
# wlan
# uwb
# unknown
# next
# prev
# cycle
# auto
# off
# wwan
# rfkill
# micmute
# leftmouse
# middlemouse
# rightmouse
# mouse1
# mouse2
# fn
# mouseforward

