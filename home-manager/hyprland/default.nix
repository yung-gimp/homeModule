let

  mod = "SUPER";

in


{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "${mod}, C, killactive,"
        "${mod}, M, exec, hyprctl dispatch exit"
        "${mod}, Q, exec, foot"
        "${mod}, R, exec, rofi -show drun"
      ];
    };
  };
}
