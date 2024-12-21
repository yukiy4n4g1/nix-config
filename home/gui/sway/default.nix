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
      output = {
        "*" = {
          bg = "${config.xdg.stateHome}/home-manager/gcroots/current-home/home-path/share/backgrounds/cosmic/webb-inspired-wallpaper-system76.jpg fill";
        };
      };
    };

    extraConfig = builtins.readFile ./config;
  };
}
