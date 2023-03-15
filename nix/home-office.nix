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
    gv

    # messaging apps
    slack
    skypeforlinux
    discord
    keybase-gui
    tdesktop

    # 3D modeling and printing
    cura
    openscad

    # recording
    obs-studio

    # video editors
    # TODO keep only 1 or 2
    pitivi
    olive-editor

    # music editors
    transcribe
    ardour

    # music sheet editors
    lilypond
    musescore

    # for when latex/R isn't an option
    libreoffice

    # image edition tools
    gimp
    image-roll
    drawio
    inkscape

    # PDF manipulation
    masterpdfeditor

    # media players
    vlc
    musikcube
    spotify

    #eye saving
    redshift

  ];

  nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.services = {
      dropbox.enable = true;
      keybase.enable = true;
      kbfs.enable = true;
      mpd.enable = true;
      fluidsynth.enable = true;
  };

  home-manager.users.leojpod.manual.manpages.enable = false;
  home-manager.users.leojpod.programs = {
    chromium.enable = true;
  };
}
