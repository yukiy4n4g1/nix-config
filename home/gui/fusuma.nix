{ pkgs, ... }:

{
  services.fusuma = {
    enable = true;
    extraPackages = with pkgs; [ ydotool ];
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
            command = "ydotool click 0xC3";
          };
          right = {
            command = "ydotool click 0xC4";
          };
        };
      };
    };
  };
}
