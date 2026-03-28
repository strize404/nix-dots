{
  services.kanata = {
    enable = true;
    keyboards = {
      kanata.extraDefCfg = "process-unmapped-keys yes";
      kanata.config = ''
        (defsrc

          esc            f1   f2   f3   f4             f5    f6    f7    f8          f9   f10  f11   f12
          grv       1      2    3      4      5       6     7      8     9      0       -      =    bspc
          tab       q      w    e      r      t       y     u      i     o      p       [      ]       \
          caps      a      s    d      f      g       h     j      k     l      ;       '          enter
          lsft      z      x    c      v      b       n     m      ,     .      /                   rsft           up
          lctl      lmet   lalt             spc                  ralt        rmet                   rctl      lft down rght

        )

        (deflayer default

          @qwer          f1   f2   f3   f4               f5    f6    f7    f8          f9   f10  f11   f12
          grv       1      2    3      4      5       6     7      8     9      0       -      =     bspc
          tab       q      w    f      g      b       ,     y      l    @u      .       [      ]        \
          bspc     @a     @r   @s     @t      d       h    @n     @e    @i     @o       '           enter
          @sbl      z      x    p     @c      j       v     m      k     /      ;                    rsft          up
          XX       XX     XX                 @sl                 XX           XX                       XX     lft down rght

        )

        (deflayer qwerty

          @def           f1   f2   f3   f4             f5    f6    f7    f8          f9   f10  f11   f12
          grv       1      2    3      4      5       6     7      8     9      0       -      =    bspc
          tab       q      w    e      r      t       y     u      i     o      p       [      ]       \
          caps      a      s    d      f      g       h     j      k     l      ;       '          enter
          lsft      z      x    c      v      b       n     m      ,     .      /                   rsft           up
          lctl      lmet   lalt               spc                ralt        rmet                   rctl      lft down rght

        )

        (deflayer sl

          XX            XX    XX    XX     XX           XX     XX     XX    XX       XX    XX    XX    XX
          XX        f1     f2   f3     f4     f5      f6    f7     f8    f9     f10    f11     f12  caps
          XX        1      2    3      4      5       6     7      8     9      0      XX      XX      XX
          enter     \      grv  lsft   lctl   /       ;     lft    down  up     rght   XX              XX
          tab       XX     XX   XX     ,      S-/     .     S-;    XX    XX     XX                     XX          XX
          XX       XX     XX               XX                     XX           XX                       XX    XX   XX   XX

        )

        (deflayer sbl

          XX            XX    XX    XX     XX           XX     XX     XX    XX       XX    XX    XX    XX
          XX        XX     XX   XX     XX      XX      XX    XX     XX    XX     XX      XX     XX     XX
          XX        S-1    S-2  S-3    S-4     S-5     S-6   S-7    S-8   S-f10  XX      XX     XX     XX
          XX        S-,    S-.  lsft   lctl    del     [     S-9    -     =      S-0     ]             XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX                      XX         XX
          XX       XX     XX               XX                     XX           XX                       XX    XX   XX   XX

        )

        (deflayer c

          XX            XX    XX    XX     XX           XX     XX     XX    XX       XX    XX    XX    XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX       XX        XX   XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX       XX        XX   XX
          XX        XX     XX   XX     XX     XX      XX   C-h     C-j   C-k    C-l      XX             XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX                      XX         XX
          XX       XX     XX                   XX                 XX           XX                       XX    XX   XX   XX

        )

        (deflayer u

          XX            XX    XX    XX     XX           XX     XX     XX    XX       XX    XX    XX    XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX       XX        XX   XX
          XX        C-1    C-2  C-3    C-4    C-5     C-6  C-7     C-8   XX     XX       XX        XX   XX
          XX        A-1    A-2  A-3    A-4    A-5     A-6  A-7     A-8   XX     XX       XX             XX
          XX        XX     XX   XX     XX     XX      XX   XX      XX    XX     XX                      XX         XX
          XX       XX     XX               XX                     XX           XX                       XX    XX   XX   XX

        )

        (defvar
          tap-time 200
          hold-time 200
        )

        (defalias
          qwer (layer-switch qwerty)
          def (layer-switch default)
          a (tap-hold $tap-time $hold-time a lmet)
          r (tap-hold $tap-time $hold-time r lalt)
          s (tap-hold $tap-time $hold-time s lsft)
          t (tap-hold $tap-time $hold-time t lctl)
          n (tap-hold $tap-time $hold-time n rctl)
          e (tap-hold $tap-time $hold-time e rsft)
          i (tap-hold $tap-time $hold-time i ralt)
          o (tap-hold $tap-time $hold-time o rmet)
          sbl (tap-hold $tap-time $hold-time esc (layer-toggle sbl))
          sl  (tap-hold $tap-time $hold-time spc (layer-toggle sl))
          c   (tap-hold $tap-time $hold-time c (layer-toggle c))
          u   (tap-hold $tap-time $hold-time u (layer-toggle u))
        )
      '';
    };
  };
}
