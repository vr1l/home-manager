{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "top";
    height= 45;
    margin-top= 10;
    margin-bottom= 0;
    margin-left= 10;
    margin-right= 10;

    modules-left= [
      "custom/separtor"
      "hyprland/workspaces"
    ];

    modules-center= [
      "clock"
    ];

    modules-right= [
        "custom/nowplaying"
        "network"
        "pulseaudio"
        "battery"
        "custom/separtor"
    ];

    "hyprland/window" = {
        format = "<b>{}</b>";
        # exec = "hyprctl activewindow | grep class | awk '{print $2}'";
        separate-outputs = true;
        max-length = 35;
    };

    clock= {
        calendar = {
          format = { today = "<span color='#b4befe'><b>{}</b></span>"; };
        };
        format = "  {:%H:%M}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= "  {:%d.%m.%Y}";
    };

    "hyprland/workspaces"= {
      disable-scroll = true;
      all-outputs = true;
      warp-on-scroll = false;
      format = "{icon}";
      format-icons= {
        "1"= "󰈹 ";
        "2"= " ";
        "3"= "󰘙 ";
        "4"= " ";
        "5"= " ";
        "6"= " ";
        "7"= "󰙯 ";
        urgent = " ";
        focused = " ";
        default = " ";
        sort-by-number= true;
        };
        on-click = "activate";
    };

    persistent-workspaces= {
        "1"= "󰈹 ";
        "2"= " ";
        "3"= "󰘙 ";
        "4"= " ";
        "5"= " ";
        "6"= " ";
        "7"= "󰙯 ";
    };

    memory= {
        format= "  {}%";
        interval= 2;
    };

    cpu= {
        format= "  {usage}%";
        format-alt= "  {avg_frequency} GHz";
        interval= 2;
    };

    network = {
        format-wifi = "  {bandwidthTotalBytes}";
        format-ethernet = " {essid}";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = " {ifname} (No IP)";
        format-disconnected = "󰖪 ";
    };

    backlight = {
        format = "{icon} {percent}%";
        format-icons = [
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
        ];
        interval = 2;
    };

    "custom/right-arr" = {
        format = "  ";
    };

    battery = {
        # states = {
        #     // "good": 95,
        #     "warning": 30,
        #     "critical": 15
        # };
        format = "{icon} {capacity}%";
        format-icons = ["  " "  " "  " "  " "  "];
        format-plugged = "  {icon} {capacity}%";
        format-charging = "  {icon} {capacity}%";
        format-full = "  {icon} {capacity}%";
        format-alt = "{icon} {time}";
    };

    tray= {
        icon-size= 26;
        spacing= 6;
    };

    pulseaudio= {
        format= "{icon} <b>{volume}</b> {format_source}";
        format-source = "{volume}%  ";
        format-source-muted = "  ";
        format-bluetooth = " ᛒ <b>{volume}</b> ";
        format-bluetooth-muted = " ";
        format-muted= " {format_source}";
        format-icons= {
            default= ["" "" ""];
        };
        scroll-step= 5;
        
    };
    
    temperature = {
        critical-threshold = 40;
        format = "{icon} {temperatureC}°C";
        format-critical = "{icon} {temperatureC}°C";
        format-icons = [
            ""
            ""
            ""
        ];
        interval = 2;
    };

    "custom/icon"= {
        format= "";
    };

    "custom/separtor" = {
      format = " ";
        on-click = "~/.config/waybar/rofi-wifi-menu.sh";
    };

    "custom/window-icon" = {
      # to be added
    };

  };
}
