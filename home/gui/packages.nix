{ pkgs, ... }:

{
  home.packages = with pkgs; [
    xfce.thunar
    wofi
    swaylock
    brightnessctl
  ];
}
