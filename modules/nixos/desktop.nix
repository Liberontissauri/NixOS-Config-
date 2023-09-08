
{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  #services.xserver.desktopManager.plasma5.enable = true;

  # Window Manager

  #programs.hyprland = {
  #  enable = true;
  #  xwayland.enable = true;
  #  nvidiaPatches = true;
  #};

  #services.xserver.windowManager.bspwm.enable = true;
  services.xserver.windowManager.i3.enable = true;  

  # Compositor
  services.picom = {
    enable = true;
    vSync = true;
    fade = true;
    fadeDelta = 5;
    opacityRules = [
      #"80:class_g = 'polybar'"
      #"80:class_g = 'Polybar'"
    ];
    settings = {
      method = "gaussian";
      corner-radius = 10;
      rounded-corners-exclude = [
        "class_g = 'polybar'"
        "class_g = 'polybar'"
      ];
    };
  };

  environment.systemPackages = with pkgs; [
    nitrogen
    scrot
    polybarFull
    rofi
  ];
}
