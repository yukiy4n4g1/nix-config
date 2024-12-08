{ pkgs, ... }:

{
  home.packages = with pkgs; [
    plemoljp-nf
  ];

  fonts.fontconfig.enable = true;
}