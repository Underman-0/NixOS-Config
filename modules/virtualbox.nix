# make sure to enable the "vboxdrv" kernel module!
{ config, ... }:
{
  virtualisation.virtualbox.host = {
    enable = true;
    enableKvm = false;
  };

  users.extraGroups.vboxusers.members = [ "underman" ];
}