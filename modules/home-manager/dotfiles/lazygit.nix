{ pkgs, ... }:

{
  home.packages = with pkgs; [ delta ];
  programs.delta.enable = true;
  home.shellAliases.lg = "lazygit";

  programs.lazygit = {
    enable = true;
    enableBashIntegration = false;
    enableZshIntegration = false;
    settings.git.diffRenderers = [
      {
        command = "delta --dark --paging=never --line-numbers";
      }
    ];
  };
}
