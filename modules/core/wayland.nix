{ inputs, pkgs, ... }:
{
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };
  environment.sessionVariables = {
  	WLR_NO_HARDWARE_CURSORS="1";
	NIXOS_OZONE_WL="1";
  };
  environment.systemPackages = with pkgs; [
    # xwaylandvideobridge
  ];
}
