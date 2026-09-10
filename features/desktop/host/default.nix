{ ... }:
{
  # Enable libinput for input device support
  services.libinput.enable = true;

  # Enable rtkit for real-time scheduling support
  security.rtkit.enable = true;

  # Enable PipeWire for audio and video
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # Use the WirePlumber session manager
    #wireplumber.enable = true;
  };

  # Enable printing support
  services.printing.enable = true;
}
