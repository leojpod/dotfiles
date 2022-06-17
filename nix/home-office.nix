{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    thunderbird
    authy
    appimage-run
    altair
    headsetcontrol
    qgis
    mendeley

    # messaging apps
    slack
    discord
    keybase-gui
    tdesktop

    # recording
    obs-studio

    # video editors - TODO keep only one of them
    shotcut
    pitivi

    # for when latex/R isn't an option
    # TODO keep only one too
    libreoffice
    calligra


  ];

  nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.services = {
      dropbox.enable = true;
      keybase.enable = true;
      kbfs.enable = true;
  };
}
