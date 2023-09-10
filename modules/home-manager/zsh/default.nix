{ pkgs, ...}: {
  programs.zsh.enable = true;
  programs.starship.enable = true;

  programs.zsh.initExtra = "
    pfetch
  ";
}