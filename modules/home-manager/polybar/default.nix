
{ pkgs, ... }: {

  home.packages = with pkgs; [
    polybarFull
  ];
  home.file.".config/polybar" = {
    source = ./config;
    recursive = true;
  };
}
