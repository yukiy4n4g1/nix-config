{ pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./waybar.nix
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
}

