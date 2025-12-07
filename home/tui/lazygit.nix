{ pkgs, ... }:

{
  home.packages = with pkgs; [ delta ];
  programs.delta.enable = true;
  programs.lazygit = {
    enable = true;
    settings.git.paging = {
      colorArg = "always";
      pager = "delta --dark --paging=never";
    };
  };

  home.shellAliases = {
    lg = "lazygit";
  };
}
