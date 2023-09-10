{ pkgs, ... }: {

  gtk = {
    enable = true;
    theme = {
      name = "Fluent";
      package = pkgs.fluent-gtk-theme;
    };
  };
}