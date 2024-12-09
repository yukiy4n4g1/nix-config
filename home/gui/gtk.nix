{ pkgs, ... }:

{
  gtk = {
    enable = true;

    font.name = "Noto Sans CJK JP";

    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight";
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
