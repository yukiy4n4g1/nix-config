{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    bashrcExtra = builtins.readFile ./.bashrc;
  };
}