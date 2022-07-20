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
    # music editors
    zrythm

    # for when latex/R isn't an option
    libreoffice

    # image edition tools
    gimp
    image-roll

    # PDF manipulation
    masterpdfeditor

    # media players
    vlc
    musikcube

  ];

  nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.services = {
      dropbox.enable = true;
      keybase.enable = true;
      kbfs.enable = true;
  };

  home-manager.users.leojpod.programs = {
    chromium.enable = true;
  };
}
