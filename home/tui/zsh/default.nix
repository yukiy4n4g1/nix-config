{ pkgs, ... }:

{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        initExtra = builtins.readFile ./.zshrc;
    };
}