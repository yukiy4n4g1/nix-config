{
  programs.waybar = {
    enable = true;
    settings = [{
      height = 20;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "bluetooth" "pulseaudio" "network" "battery" ];
      clock = {
        format = "{:%Y-%m-%d %H:%M}";
      };
      network = {
        format = "{ifname}";
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰊗 {ipaddr}/{cidr}";
        format-disconnected = "󰤮 ";
        tooltip-format = "󰊗 {ifname} via {gwaddr}";
        tooltip-format-wifi = "{essid}";
        tooltip-format-ethernet = " {ifname}";
        tooltip-format-disconnected = "Disconnected";
        max-length = 50;
      };
      battery = {
        format = "{icon}  {capacity}%";
        format-icons = [ "" "" "" "" "" ];
        status = {
          warning = 50;
          critical = 20;
        };
      };
      pulseaudio = {
        format = "{icon}  {volume}%";
        format-bluetooth = "{icon} {volume}%";
        format-muted = " ";
        format-icons = {
          headphone = "";
          phone = "" ;
          portable = ""; 
          car = "" ;
          default = [ "" "" ]; 
        };
        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
      };
      bluetooth = {
        format = "󰂯";
        format-connected = "󰂱";
        format-disabled = "󰂲";
        tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
	tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
	tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
	tooltip-format-enumerate-connected-battery = "{device_alias}\t{device_address}\t{device_battery_percentage}%";
      };
    }];
    style = ''
      * {
        color: #ffffff;
        font-size: 16px;
      }

      window#waybar {
        background: transparent;
        border-bottom: none;
      }

      #workspaces button.active {
        border-color: #ffffff;
      }

      #pulseaudio, #network, #battery, #bluetooth {
        padding-left: 10px;
        padding-right: 10px;
        border-bottom: 2px solid transparent;
      }

      #pulseaudio:hover, #network:hover, #battery:hover, #bluetooth:hover {
        border-bottom: 2px solid #ffffff;
      }
    '';
  };
}
