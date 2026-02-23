{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      {
        id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; # uBlockOrigin
      }
      {
        id = "dbepggeogbaibhgnhhndojpepiihcmeb"; # Vimium
      }
      {
        id = "nngceckbapebfimnlniiiahkandclblb"; # Bitwarden
      }
      {
        id = "aapbdbdomjkkjkaonfhkkikfgjllcleb"; # Google 翻訳
      }
      {
        id = "niloccemoadcdkdjlinkgdfekeahmflj"; # Pocket
      }
    ];
    commandLineArgs = [
      "--ozone-platform-hint=auto"
      "--gtk-version=4"
    ];
  };
}
