{ ... }:
let custom = {
    font = "FiraCode, 'Font Awesome 6 Free', 'Font Awesome 6 Brands'";
    font_size = "22px";
    font_weight = "bold";
    crust = "#11111b";
    base = "#1e1e2e";
    mantle = "#181825";
    lavender = "#b4befe";
    mauve = "#cba6f7";
    peach = "#fab387";
    red = "#f38ba8";
    sapphire = "#74c7ec";
    green = "#a6e3a1";
    teal = "#94e2d5";
    flamingo = "#f2cdcd";
    opacity = "0.98";
};
in 
{
  programs.waybar.style = ''

    * {
        padding: 0;
        margin: 0;
        font-family: ${custom.font};;
        font-size: ${custom.font_size};
        font-weight: ${custom.font_weight};
    }

    window#waybar {
        background-color: #282828;
        border-bottom: 2px solid #282828;
        color: #ffffff;
        transition-property: background-color;
        transition-duration: .5s;
    }

    window#waybar.hidden {
        opacity: 0.2;
    }

    /*
    window#waybar.empty {
        background-color: transparent;
    }
    window#waybar.solo {
        background-color: #FFFFFF;
    }
    */

    window#waybar.termite {
        background-color: #3F3F3F;
    }

    window#waybar.chromium {
        background-color: #000000;
        border: none;
    }

    button {
        /* Use box-shadow instead of border so the text isn't offset */
        box-shadow: inset 0 -3px transparent;
        /* Avoid rounded borders under each button name */
        border: none;
        border-radius: 0;
    }

    /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
    button:hover {
        background: inherit;
    }

    #workspaces button {
        padding: 0 5px;
        background-color: transparent;
        color: #EBDBB2;
    }

    #workspaces button:hover {
        background:rgba(192, 170, 132, 0.1);
        box-shadow: inherit;
        text-shadow: inherit;
    }

    #workspaces button.active {
        background-color: rgba(192, 170, 132, 0.2);
        box-shadow: inset 0 -2px #EBDBB2;
    }

    #workspaces button.urgent {
        background-color: #EA6962;
    }

    #mode {
        background-color: #64727D;
        border-bottom: 3px solid #ffffff;
    }

    #clock,
    #battery,
    #cpu,
    #memory,
    #disk,
    #temperature,
    #backlight,
    #network,
    #pulseaudio,
    #wireplumber,
    #custom-media,
    #tray,
    #mode,
    #idle_inhibitor,
    #scratchpad,
    #mpd {
        padding: 0 10px;
        color: #EBDBB2;
    }

    #window,
    #workspaces {
        margin: 0 4px;
    }

    /* If workspaces is the leftmost module, omit left margin */
    .modules-left > widget:first-child > #workspaces {
        margin-left: 0;
    }

    /* If workspaces is the rightmost module, omit right margin */
    .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
    }

    #clock {
        background-color: #282828;
    }

    #battery {
        background-color: #282828;
        color: #EBDBB2;
    }

    #battery.charging, #battery.plugged {
        color: #EBDBB2;
        background-color: #282828;
    }

    @keyframes blink {
        to {
            background-color: #ffffff;
            color: #000000;
        }
    }

    /* Using steps() instead of linear as a timing function to limit cpu usage */
    #battery.critical:not(.charging) {
        background-color: #EA6962;
        color: #EBDBB2;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: steps(12);
        animation-iteration-count: infinite;
        animation-direction: alternate;
    }

    label:focus {
        background-color: #000000;
    }

    #cpu {
        background-color: #282828;
        color: #000000;
    }

    #memory {
        background-color: #282828;
    }

    #disk {
        background-color: #282828;
    }

    #backlight {
        background-color: #282828;
    }

    #network {
        background-color: #282828;
    }

    #network.disconnected {
        background-color: #282828;
    }

    #pulseaudio {
        background-color: #282828;
        color: #EBDBB2;
    }

    #pulseaudio.muted {
        background-color: #282828;
        color: #2a5c45;
    }

    #wireplumber {
        background-color: #fff0f5;
        color: #000000;
    }

    #wireplumber.muted {
        background-color: #f53c3c;
    }

    #custom-media {
        background-color: #66cc99;
        color: #2a5c45;
        min-width: 100px;
    }

    #custom-media.custom-spotify {
        background-color: #66cc99;
    }

    #custom-media.custom-vlc {
        background-color: #ffa000;
    }

    #temperature {
        background-color: #f0932b;
    }

    #temperature.critical {
        background-color: #eb4d4b;
    }

    #tray {
        background-color: #2980b9;
    }

    #tray > .passive {
        -gtk-icon-effect: dim;
    }

    #tray > .needs-attention {
        -gtk-icon-effect: highlight;
        background-color: #eb4d4b;
    }

    #idle_inhibitor {
        background-color: #2d3436;
    }

    #idle_inhibitor.activated {
        background-color: #ecf0f1;
        color: #2d3436;
    }

    #mpd {
        background-color: #66cc99;
        color: #2a5c45;
    }

    #mpd.disconnected {
        background-color: #f53c3c;
    }

    #mpd.stopped {
        background-color: #90b1b1;
    }

    #mpd.paused {
        background-color: #51a37a;
    }

    #language {
        background: #00b093;
        color: #740864;
        padding: 0 5px;
        margin: 0 5px;
        min-width: 16px;
    }

    #keyboard-state {
        background: #97e1ad;
        color: #000000;
        padding: 0 0px;
        margin: 0 5px;
        min-width: 16px;
    }

    #keyboard-state > label {
        padding: 0 5px;
    }

    #keyboard-state > label.locked {
        background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad {
        background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad.empty {
        background-color: transparent;
    }

    #privacy {
        padding: 0;
    }

    #privacy-item {
        padding: 0 5px;
        color: white;
    }

    #privacy-item.screenshare {
        background-color: #cf5700;
    }

    #privacy-item.audio-in {
        background-color: #1ca000;
    }

    #privacy-item.audio-out {
        background-color: #0069d4;
    }

    #custom-nowplaying {
        color: #EBDBB2;
        font-family: "FiraCode";
        padding-top: 3px;
        margin-right: 10px;
    }
  '';
}
