{
  programs.firefox = {
    enable = true;

    profiles.nix = {
      settings = {
        "browser.search.region" = "JP";
        "doh-rollout.home-region" = "JP";
        "font.name.monospace.ja" = "Noto Sans Mono";
        "font.name.sans-serif.ja" = "Noto Sans CJK JP";
        "font.name.serif.ja" = "Noto Serif CJK JP";
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.visibility" = "expand-on-hover";
      };
    };
  };
}
