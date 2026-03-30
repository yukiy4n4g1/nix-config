{ pkgs, lib, ... }:

let
  yamlFormat = pkgs.formats.yaml { };

  envCertPath = builtins.getEnv "SSL_CERT_FILE";
  caCert = if envCertPath != "" then builtins.readFile envCertPath else "";

  colimaConfig = {
    cpu = 4;
    memory = 6;
    disk = 60;
    arch = "host";
    runtime = "docker";
    vmType = "vz";
    mountType = "virtiofs";
    rosetta = true;
    autoActivate = true;

    mounts = [
      {
        location = "${builtins.getEnv "HOME"}";
        writable = true;
      }
    ];

    provision = lib.optionals (caCert != "") [
      {
        mode = "user";
        script = ''
          sudo mkdir -p /usr/local/share/ca-certificates
          echo '${caCert}' | sudo tee /usr/local/share/ca-certificates/cloudflare.crt > /dev/null
          sudo update-ca-certificates
          sudo service docker restart || true
        '';
      }
    ];
  };
in
{
  home.packages = with pkgs; [
    docker
    docker-compose
    colima
  ];

  home.file.".colima/_templates/default.yaml".source = 
    yamlFormat.generate "colima-template.yaml" colimaConfig;
}
