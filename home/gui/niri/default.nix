{ pkgs, ... }:

{
  home.packages = with pkgs; [
    niri
    rofi
    mako
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    gnome-keyring
    xwayland-satellite
    brightnessctl
    xfce.thunar
  ];

  xdg.configFile = {
    "niri/config.kdl".source = ./config.kdl;
  };
}
