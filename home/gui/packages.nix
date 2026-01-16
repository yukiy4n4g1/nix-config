{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vlc
    qimgv # image viewer
  ];
}
