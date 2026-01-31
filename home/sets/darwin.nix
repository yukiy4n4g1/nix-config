{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../tui/neovim/default.nix
    ../tui/vim/default.nix
    ../tui/zsh/default.nix
    ../tui/eza.nix
    ../tui/helix/default.nix
    ../tui/lazygit.nix
    ../tui/mise.nix
    ../tui/packages.nix
    ../tui/starship.nix
    ../tui/yazi.nix
  ];
}
