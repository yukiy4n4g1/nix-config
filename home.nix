{ config, pkgs, ... }:

{
  home.username = "yukiy4n4g1";
  home.homeDirectory = "/home/yukiy4n4g1";

  home.packages = with pkgs; [
    neofetch
    alacritty
    kitty
    xfce.thunar
    foot
    waybar
    wofi
    gh
    htop
    swaylock
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    # systemd.enable = true;

    settings = {
      "$mod" = "ALT";
      "$modshift" = "ALTSHIFT";
      "$term" = "foot";
      "$launcher" = "wofi --show=drun";

      general = {
        gaps_in = 5;
        gaps_out = 10;
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 4;
      };

      exec-once = [
        "fcitx5"
        "waybar"
      ];

      monitor = [
        "eDP-1, 1920x1080, 960x1080, 1"
        "DP-1, preferred, 0x0, 2"
        ",preferred, auto, 1"
      ];

      bind = [
        "$mod,Return,exec,$term"
        "$mod,Space,exec,$launcher"
        "$mod,Delete,exec,hyprctl dispatch exit"
        "CTRLALT,Delete,exec,hyprctl dispatch exit"

        "$mod,Q,killactive"
        "$mod,F,fullscreen"
        "$modshift,F,togglefloating"

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
    };

    extraConfig = ''
      device:dell09e8:00-04f3:3146-touchpad {
        natural_scroll = true
      }
    '';
  };

  programs.waybar = {
    enable = true;
    settings = [{
      height = 20;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "network" "battery" ];
      clock = {
        format = "{:%Y-%m-%d %H:%M}";
      };
      network = {
        format = "{ifname}";
        format-wifi = "{essid} ({signalStrength}%) ";
        format-ethernet = "{ipaddr}/{cidr} 󰊗";
        format-disconnected = "Disconnected";
        tooltip-format = "{ifname} via {gwaddr} 󰊗";
        tooltip-format-wifi = "{essid} ({signalStrength}%) ";
        tooltip-format-ethernet = "{ifname} ";
        tooltip-format-disconnected = "Disconnected";
        max-length = 50;
      };
      battery = {
        format = "{capacity}% {icon}%";
        format-icons = [ "" "" "" "" "" ];
      };
    }];
    style = ''
      * {
        color: #ffffff;
        font-size: 16px;
        font-weight: bold;
      }

      window#waybar {
        background: transparent;
        border-bottom: none;
      }
    '';
  };

  programs.foot = {
    enable = true;

    settings = {
      main = {
        term = "xterm-256color";

        font = "HackGen35 Console NF:size=12";
        # dpi-aware = "yes";
      };

      mouse = {
        hide-when-typing = "yes";
      };
    };
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };

  programs.vim = {
    enable = true;
    settings = { number = true; };
    extraConfig = ''
      set autoindent
      set smartindent
      set smartcase
      inoremap <silent> jk <esc>
      noremap x "_x
    '';
  };

  programs.git = {
    enable = true;
    userName = "yukiy4n4g1";
    userEmail = "40228235+yukiy4n4g1@users.noreply.github.com";
  };
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
