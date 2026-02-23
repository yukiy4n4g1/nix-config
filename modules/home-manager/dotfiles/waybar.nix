{
  programs.waybar = {
    enable = true;
    settings = [{
      height = 20;
      modules-left = [ "sway/workspaces" "sway/mode" ];
      modules-center = [ "clock" ];
      modules-right = [ "bluetooth" "pulseaudio" "network" "battery" ];

      clock = {
        format = "{:%Y-%m-%d %H:%M}";
      };

      network = {
        format = "{ifname}";
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰈀 Connected";
        format-disconnected = "󰤮 ";
        tooltip-format = "󰊗 {ifname} via {gwaddr}";
        tooltip-format-wifi = "{essid}";
        tooltip-format-ethernet = " {ipaddr}/{cidr} {ifname}";
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

      "sway/workspaces" = {
        disable-scroll = true;
      };
    }];

    style = ''
      * {
        color: #ffffff;
        font-size: 16px;
        font-family: 'JetBrainsMonoNL Nerd Font';
        background-color: #000000;
      }

      window#waybar {
        background: transparent;
        border-bottom: none;
      }

      #workspaces button {
        padding-left: 0px;
        padding-right: 0px;
        border-bottom: 2px solid transparent;
        border-radius: unset;
      }

      #workspaces button.active {
        border-color: #ffffff;
      }

      #workspaces button.focused {
        border-bottom: 2px solid #ffffff;
      }

      #mode {
        padding-left: 10px;
        padding-right: 10px;
        margin-left: 10px;
        border: 1px solid #ffffff;
        border-radius: 10px;
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
