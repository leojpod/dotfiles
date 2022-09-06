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


    #latex 
    # choosing the full scheme stuff 'cause I've a TB harddrive :D
    texlive.combined.scheme-full

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
    # TODO keep only 1 or 2
    lmms
    rosegarden
    jack_capture
    traverso
    ardour
    muse

    # for when latex/R isn't an option
    libreoffice

    # image edition tools
    gimp
    image-roll
    drawio

    # PDF manipulation
    masterpdfeditor

    # media players
    vlc
    musikcube

    #eye saving
    redshift

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
