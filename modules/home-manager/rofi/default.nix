
{ pkgs, ... }: {

  home.pkgs = with pkgs; [
    rofi
  ];
  home.file.".config/rofi" = {
    source = ./config;
    recursive = true;
  };
}
