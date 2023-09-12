
{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    terminus_font
    hack-font
    mononoki
    meslo-lgs-nf
    font-awesome
    aileron
    nerdfonts
  ];
}
