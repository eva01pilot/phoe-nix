{ pkgs, config, boot, ... }:
{  
  boot.kernelParams = [ 
    "nvidia-drm.fbdev=1"
    "nvidia.drm.modeset=1"
  ];
  hardware = {
    opengl.enable = true;
    opengl.driSupport32Bit = true;

    nvidia.modesetting.enable = true;
    nvidia.open = false;
    nvidia.nvidiaSettings = true;
    #nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
    #graphics = {
    #  enable = true;
    #  extraPackages = with pkgs; [
    #
    #  ];
    #};
  };
  hardware.enableRedistributableFirmware = true;
}
