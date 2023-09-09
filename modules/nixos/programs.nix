
{ pkgs, ... }:

{
  
  users.users.liberontissauri.packages = with pkgs; [
    firefox
    alacritty
    viewnior # Image Viewer
    gpick
    pavucontrol
    discord
    obsidian
    pfetch
    escrotum
    spotify
    spicetify-cli
    localsend
    bitwarden
    brightnessctl

    # Programming
    vscode-fhs
    git
    nil # Nix Language Server
  ];

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
