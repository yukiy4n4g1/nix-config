{ pkgs, ... }:

{
  home.packages = with pkgs; [ delta ];
  programs.delta.enable = true;
  programs.lazygit = {
    enable = true;
    settings.git.pagers = [
      {
        pager = "delta --dark --paging=never --line-numbers --side-by-side";
      }
    ];
  };
}
