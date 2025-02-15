{ pkgs-unstable, ... }:

{
  programs.vscode = {
    package = (pkgs-unstable.vscode.override { commandLineArgs = "--ozone-platform=x11"; }).fhs;
    enable = true;
    enableUpdateCheck = false;
    extensions = with pkgs-unstable.vscode-extensions; [
      enkia.tokyo-night
      vscodevim.vim
      jnoortheen.nix-ide
      github.copilot
      github.copilot-chat
    ] ++ pkgs-unstable.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "vscode-language-pack-ja";
        publisher = "ms-ceintl";
        version = "1.97.2025020509";
        sha256 = "0xz5kkq0scmxfvn27lpgb0lz7dzp14fhr733sd5ky158wlbminx4";
      }
      {
        name = "symbols";
        publisher = "miguelsolorio";
        version = "0.0.22";
        sha256 = "0k644ma94k6ygk6ys8rgmrz2q0ixjkvkik4393p44fking7k55id";
      }
    ];
    userSettings = builtins.fromJSON (builtins.readFile ./settings.json);
  };
}
