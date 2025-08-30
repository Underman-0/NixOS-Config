{config, plasma-manager, ...}:
{
  programs.plasma = {
    enable = true;
    workspace.cursor = {
      theme = "Nordic-cursors";
      size = 36;
    };
  };
}