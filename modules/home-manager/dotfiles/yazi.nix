{
  programs.yazi = {
    enable = true;
    enableBashIntegration = false;
    enableZshIntegration = false;

    settings = {
      mgr = {
        show_hidden = true;
      };
    };
  };

  home.shellAliases = {
    yz = "yazi";
    yy = "yazi";
  };
}
