{
  programs.firefox = {
    enable = true;

    profiles.nix = {
      settings = {
        "intl.locale.requested" = "ja,en-US";
        "browser.search.region" = "JP";
        "doh-rollout.home-region" = "JP";
        "font.name.monospace.ja" = "Noto Sans Mono";
        "font.name.sans-serif.ja" = "Noto Sans CJK JP";
        "font.name.serif.ja" = "Noto Serif CJK JP";
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.visibility" = "always-show";

        # Altキーでのメニューアクセスを無効化
        "ui.key.menuAccessKeyFocuses" = false;
        "ui.key.menuAccessKey" = 0;
      };
    };
  };
}
