{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      mgr = {
        show_hidden = true;
      };
    };
  };

  home.shellAliases = {
    yz = "yazi";
  };
}
