{ ... }:
{
  # Enable libinput for input device support
  services.libinput.enable = true;

  # Enable rtkit for real-time scheduling support
  security.rtkit.enable = true;

  # Enable PipeWire for audio and video
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # Enable printing support
  services.printing.enable = true;
}
