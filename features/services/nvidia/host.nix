# PRIME Offload is used instead of PRIME Sync because this system runs Wayland (Niri).
# The integrated GPU handles the desktop and regular applications, while the NVIDIA
# GPU is used on demand for applications that require dedicated graphics performance.
# Launch applications with `nvidia-offload <command>` or configure it in their launch options.
# PRIME Sync is intended for X11 and is not supported as a PRIME mode under Wayland.
{ hostVars, ... }:

let
  fail = message: throw "NVIDIA configuration error: ${message}";

  nvidiaDrivers =
    if !(hostVars ? nvidiaDrivers) then
      fail "Missing hostVars.nvidiaDrivers."
    else
      hostVars.nvidiaDrivers;

  integratedKind =
    if !(nvidiaDrivers ? integratedKind) then
      fail "Missing hostVars.nvidiaDrivers.integratedKind."
    else if
      !(builtins.elem nvidiaDrivers.integratedKind [
        "intel"
        "amd"
      ])
    then
      fail "integratedKind must be either \"intel\" or \"amd\"."
    else
      nvidiaDrivers.integratedKind;

  integratedBusId =
    if !(nvidiaDrivers ? integratedBusId) then
      fail "Missing hostVars.nvidiaDrivers.integratedBusId."
    else
      nvidiaDrivers.integratedBusId;

  nvidiaBusId =
    if !(nvidiaDrivers ? nvidiaBusId) then
      fail "Missing hostVars.nvidiaDrivers.nvidiaBusId."
    else
      nvidiaDrivers.nvidiaBusId;

  integratedBusOption =
    if integratedKind == "intel" then
      {
        intelBusId = integratedBusId;
      }
    else
      {
        amdgpuBusId = integratedBusId;
      };
in
{
  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    powerManagement.enable = true;
  };

  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd = true;
    };

    inherit nvidiaBusId;
  }
  // integratedBusOption;
}
