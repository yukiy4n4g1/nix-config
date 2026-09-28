{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    initContent = builtins.readFile ./.zshrc;
    profileExtra = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
      export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
      if [ -f "$HOME/.profile" ]; then
        . "$HOME/.profile"
      fi
    '';
  };
}
