{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      manager = {
        show_hidden = true;
      };
    };
  };

  home.shellAliases = {
    yz = "yazi";
  };
}
