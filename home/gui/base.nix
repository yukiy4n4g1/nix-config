{ pkgs, ... }:

{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };

  home.packages = with pkgs; [
    plemoljp-nf
  ];

  fonts.fontconfig.enable = true;
}

