{ pkgs, ... }:

{
  home.packages = with pkgs; [
    xfce.thunar
    wofi
    brightnessctl
    nwg-displays
  ];
}
