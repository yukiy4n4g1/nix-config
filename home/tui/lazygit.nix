{ pkgs, ... }:

{
  programs.git.delta.enable = true;
  programs.lazygit = {
    enable = true;
    settings.git.paging = {
      colorArg = "always";
      pager = "delta --dark --paging=never";
    };
  };
}
