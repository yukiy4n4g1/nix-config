{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ./dotfiles/neovim/default.nix
    ./dotfiles/vim/default.nix
    ./dotfiles/zsh/default.nix
    ./dotfiles/eza.nix
    ./dotfiles/helix/default.nix
    ./dotfiles/lazygit.nix
    ./dotfiles/mise.nix
    ./dotfiles/cli-packages.nix
    ./dotfiles/starship.nix
    ./dotfiles/yazi.nix
    ./dotfiles/zellij.nix
    ./dotfiles/k8s.nix
  ];
}
