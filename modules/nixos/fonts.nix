
{ config, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    terminus_font
    hack-font
    mononoki
    meslo-lgs-nf
    font-awesome
    aileron
  ];
}
