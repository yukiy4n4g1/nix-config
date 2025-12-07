{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings.user = {
      name = "yukiy4n4g1";
      email = "40228235+yukiy4n4g1@users.noreply.github.com";
    };
  };
}
