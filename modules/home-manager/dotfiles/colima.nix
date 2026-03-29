{ pkgs, ...}:

{
  home.packages = with pkgs; [
    docker
    docker-compose
  ];

  home.sessionVariables = {
    COLIMA_SAVE_CONFIG = "0"; # colimaが設定ファイルを書き換えるのを防止する
  };

  services.colima = {
    enable = true;
    profiles = {
      default = {
        settings = {
          cpu = 4;
          memory = 6;
          disk = 60;

          vmType = "vz";
          mountType = "virtiofs";
          rosetta = true;
        };
      };
    };
  };
}
