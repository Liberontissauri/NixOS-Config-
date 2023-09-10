{ pkgs, ...}: {
  programs.zsh.enable = true;
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;

  programs.zsh.initExtra = "
    pfetch
  ";

  home.file.".config/starship.toml" = {
    source = ./config/starship.toml;
  };
}