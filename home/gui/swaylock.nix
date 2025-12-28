{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    cosmic-wallpapers
  ];

  programs.swaylock = {
    enable = true;
    settings = {
      image = "${config.xdg.stateHome}/home-manager/gcroots/current-home/home-path/share/backgrounds/cosmic/round_moons_nasa.jpg";
    };
  };
}
