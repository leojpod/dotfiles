{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    expressvpn

    firefox
    thunderbird
    authy
    appimage-run
    altair
    headsetcontrol

    qgis
    mendeley

    xygrib


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
    signal-desktop

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
    # lilypond
    lilypond-with-fonts
    mpv
    timidity
    soundfont-fluid

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

    #best keyboard stuff
    uhk-agent
    uhk-udev-rules

  ];

  services.udev.extraRules = ''
    # extra bit of thing for opencpn and o-chart data
    ATTRS{idVendor}=="1547", ATTRS{idProduct}=="1000", MODE="0666"
    # Ultimate Hacking Keyboard rules
    SUBSYSTEM=="input", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="612[0-7]", GROUP="input", MODE="0660"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="612[0-7]", TAG+="uaccess"
    KERNEL=="hidraw*", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="612[0-7]", TAG+="uaccess"
    '';
  services.flatpak.enable = true;
  services.teamviewer.enable = true;

  nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.nixpkgs.config.allowUnfree = true;
  home-manager.users.leojpod.services = {
      dropbox.enable = true;
      keybase.enable = true;
      kbfs.enable = true;
      mpd.enable = true;
      mpd.musicDirectory = "~/Music/mpd";
      fluidsynth.enable = true;
  };

  home-manager.users.leojpod.home.stateVersion = "23.05";
  home-manager.users.leojpod.manual.manpages.enable = false;
  home-manager.users.leojpod.programs = {
    chromium.enable = true;
  };
}
