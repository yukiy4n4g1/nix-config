{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    initContent = builtins.readFile ./.zshrc;
    profileExtra = ''
      if [ -f "$HOME/.profile" ]; then
        . "$HOME/.profile"
      fi
    '';
  };
}
