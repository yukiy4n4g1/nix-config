{ pkgs, ... }:

{
  home.packages = with pkgs; [
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    plemoljp-nf
  ];

  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      serif = [ "NotoSerifCJK-VF" ];
      sansSerif = [ "NotoSansCJK-VF" ];
      monospace = [ "NotoSansMonoCJK-VF" ];
      emoji = [ "NotoColorEmoji" ];
    };
  };
}