{
  imports = [
    ./home.nix

    ./dotfiles/niri/ashell.nix
    ./dotfiles/niri/default.nix
    ./dotfiles/fcitx.nix
    ./dotfiles/firefox.nix
    ./dotfiles/foot.nix
    # ./dotfiles/fusuma.nix # niriのジェスチャーと重複するので無効にする
    ./dotfiles/kanshi.nix
    ./dotfiles/gui-packages.nix
    ./dotfiles/swaylock.nix

    ./dotfiles/bash/default.nix
    ./dotfiles/neovim/default.nix
    ./dotfiles/vim/default.nix
    ./dotfiles/eza.nix
    ./dotfiles/git.nix
    ./dotfiles/helix/default.nix
    ./dotfiles/lazygit.nix
    ./dotfiles/cli-packages.nix
    ./dotfiles/starship.nix
    ./dotfiles/yazi.nix
    ./dotfiles/zellij.nix
  ];
}
