{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    # systemd.enable = true;

    settings = {
      "$mod" = "SUPER";
      "$modshift" = "SUPERSHIFT";
      "$term" = "foot";
      "$launcher" = "wofi --show=drun";

      general = {
        gaps_in = 5;
        gaps_out = "10,10,10,10";
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 4;
      };

      exec-once = [
        "fcitx5"
        "waybar"
        "fusuma"
      ];

      animation = [
        "workspaces, 1, 8, default, fade"
      ];

      monitor = [
        "eDP-1, 1920x1080, 960x1080, 1"
        "DP-1, preferred, 0x0, 2"
        "HDMI-A-1, prefrered, 1920x0, 1"
        ",preferred, auto, 1"
      ];

      layerrule = [
        "blur, waybar"
      ];

      bind = [
        "$mod,Return,exec,$term"
        "$mod,Space,exec,$launcher"
        "$mod,Delete,exec,hyprctl dispatch exit"
        "CTRLALT,Delete,exec,hyprctl dispatch exit"
        "$mod,Escape,exec,swaylock -f -c 000000"

        "$mod,Q,killactive"
        "$mod,F,fullscreen"
        "$modshift,F,togglefloating"

        ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
        ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"

        ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute,exec,wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        "$mod,left,movefocus,l"
        "$mod,right,movefocus,r"
        "$mod,up,movefocus,u"
        "$mod,down,movefocus,d"
        "$mod,H,movefocus,l"
        "$mod,J,movefocus,d"
        "$mod,K,movefocus,u"
        "$mod,L,movefocus,r"

        "$modshift,left,movewindow,l"
        "$modshift,down,movewindow,d"
        "$modshift,up,movewindow,u"
        "$modshift,right,movewindow,r"
        "$modshift,H,movewindow,l"
        "$modshift,J,movewindow,d"
        "$modshift,K,movewindow,u"
        "$modshift,L,movewindow,r"

        "$mod CTRL,H,workspace,m-1"
        "$mod CTRL,L,workspace,m+1"

        "$mod,1,workspace,1"
        "$mod,2,workspace,2"
        "$mod,3,workspace,3"
        "$mod,4,workspace,4"
        "$mod,5,workspace,5"
        "$mod,6,workspace,6"
        "$mod,7,workspace,7"
        "$mod,8,workspace,8"
        "$mod,9,workspace,9"
        "$mod,0,workspace,10"

        "$modshift,1,movetoworkspace,1"
        "$modshift,2,movetoworkspace,2"
        "$modshift,3,movetoworkspace,3"
        "$modshift,4,movetoworkspace,4"
        "$modshift,5,movetoworkspace,5"
        "$modshift,6,movetoworkspace,6"
        "$modshift,7,movetoworkspace,7"
        "$modshift,8,movetoworkspace,8"
        "$modshift,9,movetoworkspace,9"
        "$modshift,0,movetoworkspace,10"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, Control_L, movewindow"
        "$mod, mouse:273, resizewindow"
        "$mod, ALT_L, resizewindow"
      ];
    };

    extraConfig = ''
      bind = $mod, R, submap, resize
      submap = resize
      binde = , right, resizeactive, 10 0
      binde = , left, resizeactive, -10 0
      binde = , up, resizeactive, 0 -10
      binde = , down, resizeactive, 0 10
      bind = , escape, submap, reset 
      submap = reset

      device {
        name = dell09e8:00-04f3:3146-touchpad
        natural_scroll = true
      }
    '';
  };
}
