{ pkgs, ...}: {
  networking.hostName = "lil-lib";
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
  networking.enableIPv6 = false;
  networking.firewall.allowedTCPPorts = [ 22 53317 ];
  networking.firewall.allowedUDPPorts = [ 53317 ];

  # VPN config
  services.tailscale.enable = true;

  # Network SMB Share
  fileSystems."/mnt/lab-share" = {
    device = "//100.74.216.80/Main";
    fsType = "cifs";
    options = let
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in ["${automount_opts},credentials=/home/liberontissauri/NixOS/smb-secrets,uid=1000,gid=100"];

  };

}