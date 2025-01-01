{ pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      format = "$os$shell$all";

      shell = {
        disabled = false;
      };

      os = {
        disabled = false;
      };
    };
  };
}
