{
  imports = [
    ../shellAliases.nix
  ];

  programs.bash = {
    enable = true;
    bashrcExtra = builtins.readFile ./.bashrc;
  };
}
