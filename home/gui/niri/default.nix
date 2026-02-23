{ pkgs, config, ... }:

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
    thunar
    wl-clipboard
    swaybg
    swayidle

    nixos-artwork.wallpapers.nineish-dark-gray
  ];

  xdg.configFile = {
    "niri/config.kdl".source = pkgs.replaceVars ./config.kdl {
      background_image_path = "${config.xdg.stateHome}/home-manager/gcroots/current-home/home-path/share/backgrounds/nixos/nix-wallpaper-nineish-dark-gray.png";
      # DEFAULT_AUDIO_SINK = "@DEFAULT_AUDIO_SINK@";
      # DEFAULT_AUDIO_SOURCE = "@DEFAULT_AUDIO_SOURCE@";
      DEFAULT_AUDIO_SINK = null;
      DEFAULT_AUDIO_SOURCE = null;
    };
  };
}
