{
  home.username = "yukiy4n4g1";
  home.homeDirectory = "/home/yukiy4n4g1";

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

  # nixpkgs.config.allowUnfreePredicate = pkg:
  #   builtins.elem (pkgs.lib.getName pkg) [
  #     "vscode"
  #   ];
}
