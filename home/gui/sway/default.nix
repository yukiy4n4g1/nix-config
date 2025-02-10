{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    swaybg
    swayidle
    cosmic-wallpapers
  ];

  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    checkConfig = false;

    config = {
      keybindings = {};
      bars = [];

      output = {
        "*" = {
          bg = "${config.xdg.stateHome}/home-manager/gcroots/current-home/home-path/share/backgrounds/cosmic/webb-inspired-wallpaper-system76.jpg fill";
        };
      };

      workspaceOutputAssign = [
        { workspace = "1"; output = "eDP-1"; }
        { workspace = "2"; output = "DP-1"; }
        { workspace = "3"; output = "DP-1"; }
        { workspace = "4"; output = "DP-1"; }
        { workspace = "5"; output = "DP-1"; }
        { workspace = "6"; output = "DP-1"; }
        { workspace = "7"; output = "DP-1"; }
        { workspace = "8"; output = "DP-1"; }
        { workspace = "9"; output = "DP-1"; }
        { workspace = "10"; output = "DP-1"; }
      ];
    };

    extraConfig = builtins.readFile ./config;
  };
}
