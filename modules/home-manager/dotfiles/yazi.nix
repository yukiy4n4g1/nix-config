{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    shellWrapperName = "yy";

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
