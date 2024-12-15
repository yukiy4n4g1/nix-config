{ pkgs, config, ... }:

{
  programs.swaylock = {
    enable = true;
    settings = {
      image = "${config.xdg.stateHome}/home-manager/gcroots/current-home/home-path/share/backgrounds/cosmic/otherworldly_earth_nasa_ISS064-E-29444.jpg";
    };
  };
}