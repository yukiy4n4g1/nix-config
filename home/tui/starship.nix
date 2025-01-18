{ pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      format = "$os$shell$all";

      shell = {
        disabled = true;
      };

      os = {
        disabled = false;
      };
    };
  };
}
