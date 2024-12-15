{ pkgs, ... }:

{
  services.kanshi = {
    enable = true;

    profiles = { 
      default = {
        outputs = [
          {
            criteria = "eDP-1";
            position = "0,0";
            scale = 1.0;
            status = "enable";
          }
        ];
      };
      home1 = {
        outputs = [
          {
            criteria = "Dell Inc. DELL U2720QM 15FXX83";
            position = "0,0";
            scale = 2.0;
            mode = "3840x2160@59.997Hz";
          }
          {
            criteria = "eDP-1";
            position = "443,1080";
            scale = 1.3;
            status = "enable";
          }
        ];
      };
    };
  };
}
