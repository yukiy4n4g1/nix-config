{ pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./waybar.nix
    ./base.nix
  ];

  home.packages = with pkgs; [
    xfce.thunar
    foot
    waybar
    wofi
    swaylock
    brightnessctl
  ];

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

      cursor = {
        color = "c0caf5 283457";
      };

      colors = {
        foreground = "c0caf5";
        background = "1a1b26";
        selection-foreground = "c0caf5";
        selection-background = "283457";
        urls = "73daca";

        regular0 = "15161e";
        regular1 = "f7768e";
        regular2 = "9ece6a";
        regular3 = "e0af68";
        regular4 = "7aa2f7";
        regular5 = "bb9af7";
        regular6 = "7dcfff";
        regular7 = "a9b1d6";

        bright0 = "414868";
        bright1 = "f7768e";
        bright2 = "9ece6a";
        bright3 = "e0af68";
        bright4 = "7aa2f7";
        bright5 = "bb9af7";
        bright6 = "7dcfff";
        bright7 = "c0caf5";

        "16" = "ff9e64";
        "17" = "db4b4b";
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

  programs.vscode = {
    enable = true;
  };

  services.fusuma = {
    enable = true;
    extraPackages = with pkgs; [ ydotool ];
    settings = {
      threshold = {
        swipe = 0.1;
      };
      interval = {
        swipe = 0.7;
      };
      swipe = {
        "3" = {
          left = {
            command = "ydotool click 0xC3";
          };
          right = {
            command = "ydotool click 0xC4";
          };
        };
      };
    };
  };
}

