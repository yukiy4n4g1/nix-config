{
  services.kanshi = {
    enable = true;

    settings = [
      {
        profile = {
          name = "default";
          outputs = [
            {
              criteria = "eDP-1";
              position = "0,0";
              scale = 1.5;
              status = "enable";
            }
          ];
        };
      }
      {
        profile = {
          name = "home1";
          outputs = [
            {
              criteria = "Dell Inc. DELL U2720QM 15FXX83";
              position = "0,0";
              scale = 1.8;
              mode = "3840x2160@59.997Hz";
            }
            {
              criteria = "eDP-1";
              position = "0,1200";
              scale = 1.5;
              status = "enable";
            }
          ];
        };
      }
    ];
  };
}
