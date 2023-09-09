
{inputs, config, pkgs, ...}: {

  imports = [

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
  programs.git.enable = true;

  home = {
    username = "liberontissauri";
    homeDirectory = "/home/liberontissauri";
    stateVersion = "23.05";
  };
}