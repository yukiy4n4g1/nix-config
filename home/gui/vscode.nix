{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      enkia.tokyo-night
      vscodevim.vim
      jnoortheen.nix-ide
    ];
  };
}
