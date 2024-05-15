{
    programs.waybar = {
    enable = true;
    settings = [{
      height = 20;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "network" "battery" ];
      clock = {
        format = "{:%Y-%m-%d %H:%M}";
      };
      network = {
        format = "{ifname} ";
        format-wifi = "{essid} ({signalStrength}%) ";
        format-ethernet = "{ipaddr}/{cidr} 󰊗";
        format-disconnected = "Disconnected";
        tooltip-format = "{ifname} via {gwaddr} 󰊗";
        tooltip-format-wifi = "{essid} ({signalStrength}%) ";
        tooltip-format-ethernet = "{ifname} ";
        tooltip-format-disconnected = "Disconnected";
        max-length = 50;
      };
      battery = {
        format = "{capacity}% {icon}";
        format-icons = [ "" "" "" "" "" ];
      };
      pulseaudio = {
        format = "{volume}% {icon} ";
        format-bluetooth = "{volume}% {icon}";
        format-muted = "";
        format-icons = {
          headphone = "";
          phone = "" ;
          portable = ""; 
          car = "" ;
          default = [ "" "" ]; 
        };
      };
    }];
    style = ''
      * {
        color: #ffffff;
        font-size: 16px;
        font-weight: bold;
      }

      window#waybar {
        background: transparent;
        border-bottom: none;
      }
    '';
  };
}
