{
  imports = [
    ./home.nix

    gui/niri/ashell.nix
    gui/niri/default.nix
    gui/fcitx.nix
    gui/firefox.nix
    gui/foot.nix
    # gui/fusuma.nix # niriのジェスチャーと重複するので無効にする
    gui/kanshi.nix
    gui/packages.nix
    gui/swaylock.nix

    tui/bash/default.nix
    tui/neovim/default.nix
    tui/vim/default.nix
    tui/eza.nix
    tui/git.nix
    tui/helix/default.nix
    tui/lazygit.nix
    tui/packages.nix
    tui/starship.nix
    tui/yazi.nix
    tui/zellij.nix
  ];
}
