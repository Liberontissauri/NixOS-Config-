
{ pkgs, ... }:

{
  programs.zsh.enable = true;
  programs.zsh.ohMyZsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  environment.systemPackages = with pkgs; [
    wget
    lshw # Shows PCI Ids of all connected devices
    unzip
    imagemagick
    killall
    pure-prompt # Zsh Prompt
  ];
}
