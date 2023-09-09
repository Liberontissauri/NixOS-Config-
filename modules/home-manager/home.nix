
{inputs, config, pkgs, ...}: {

  imports = [
    ./i3
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };

    overlays = [

    ];
  };

  programs.home-manager.enable = true;
  #programs.git.enable = true;

  home = {
    username = "liberontissauri";
    homeDirectory = "/home/liberontissauri";
    stateVersion = "23.05";
  };

  home.packages = with pkgs; [
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
}