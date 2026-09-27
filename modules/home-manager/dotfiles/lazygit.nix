{ pkgs, ... }:

{
  home.packages = with pkgs; [ delta ];
  programs.delta.enable = true;
  programs.lazygit = {
    enable = true;
    settings.git.diffRenderers = [
      {
        command = "delta --dark --paging=never --line-numbers";
      }
    ];
  };
}
