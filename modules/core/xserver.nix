{ pkgs, username, ... }: 
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,ru";
      videoDrivers = ["nvidia"];
    };
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
    displayManager.autoLogin = {
      enable = true;
      user = "ilya";
    };
    libinput = {
      enable = true;
      # mouse = {
      #   accelProfile = "flat";
      # };
    };
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
