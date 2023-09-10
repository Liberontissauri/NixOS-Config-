{ pkgs, ...}: {
  programs.zsh.enable = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;

  programs.zsh.initExtra = "
    bindkey \"^[[1;5C\" forward-word
    bindkey \"^[[1;5D\" backward-word
    pfetch
  ";

  home.file.".config/starship.toml" = {
    source = ./config/starship.toml;
  };
}