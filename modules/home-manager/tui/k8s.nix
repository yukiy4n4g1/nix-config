{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kubectl
    kind
    k9s
  ];
  home.shellAliases = {
    k9s = "LANG=\"en_US.UTF-8\" LC_ALL=\"en_US.UTF-8\" k9s";
  };
}
