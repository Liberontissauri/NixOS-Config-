{ pkgs, ...}: {
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [
    virt-manager
  ];
  boot.kernelParams = [
    "intel_iommu=on"
  ];
}