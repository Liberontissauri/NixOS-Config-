
{ pkgs, ... }: {

  xsession.windowManager.i3 = {
    enable = true;
  };
  home.file.".config/i3" = {
    source = ./config;
    recursive = true;
  };
}
