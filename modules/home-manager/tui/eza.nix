{ pkgs, ... }:

{
  programs.eza = {
    enable = true;
    git = true;
    icons = "auto";
    extraOptions = [
      "--group-directories-first"
      "--header"
      "--time-style=long-iso"
    ];
  };
}
