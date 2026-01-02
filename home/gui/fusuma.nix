{ pkgs, ... }:

{
  services.fusuma = {
    enable = true;
    extraPackages = with pkgs; [
      ydotool
      coreutils # unameがないとエラーになった
    ];
    settings = {
      threshold = {
        swipe = 0.1;
      };
      interval = {
        swipe = 0.7;
      };
      swipe = {
        "3" = {
          left = {
            # programs.ydotool.enableで有効にしたもののソケットを使う
            command = "YDOTOOL_SOCKET=/run/ydotoold/socket ydotool click 0xC3";
          };
          right = {
            command = "YDOTOOL_SOCKET=/run/ydotoold/socket ydotool click 0xC4";
          };
        };
      };
    };
  };
}
